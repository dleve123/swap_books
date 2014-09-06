class MatchesController < ApplicationController
  before_action :authenticate_user!

  def create
    match = if params.fetch(:state) == 'buying'
              match = Match.create!(buying_match_params)
              notice = "Requesting #{match.book.name}!"
            else params.fetch(:state) == 'selling'
              match = Match.create!(selling_match_params)
              notice = "Selling #{match.book.name}!"
            end

    redirect_to books_path, flash: { notice: notice }
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
