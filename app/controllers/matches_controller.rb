class MatchesController < ApplicationController

  before_action :authenticate_user!,   except: [:show] #TEst code
 
  def show
    @user = current_user

    @match = Match.unscoped.find(params[:id])
    if @match.buyer.id == @user.id
      @other_user = @match.seller
    else
      @other_user = @match.buyer
    end
  end

  def create
    if params.fetch(:state) == 'buying'
      desired_book = Book.find(params.fetch(:book_id))

      seller_match = FindSellerMatch.new(desired_book).find
      seller_match.update(buyer_id: current_user.id)

      MatchMailer.match_email(current_user).deliver

      notice = "Requesting #{seller_match.book.name}!"
      redirect_to book_match_path(desired_book, seller_match.id), flash: { notice: notice }
    else params.fetch(:state) == 'selling'
      seller_match = Match.create!(selling_match_params)
      notice = "Selling #{seller_match.book.name}!"
      redirect_to books_path, flash: { notice: notice }
    end
  end

  def buying_match_params
    params[:buyer_id] = current_user.id
    params.delete(:state)
    params.permit(:buyer_id, :book_id)
  end

  def selling_match_params
    params[:seller_id] = current_user.id
    params.delete(:state)
    params.permit(:seller_id, :book_id)
  end
end
