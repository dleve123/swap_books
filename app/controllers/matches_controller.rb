class MatchesController < ApplicationController
  def create

    match = if params.fetch(:state) == 'buying'
      match = Match.create!(buying_match_params)
    end

    redirect_to root_url, flash: { notice: "Requested #{match.book.name}!" }
  end


  def buying_match_params
    params[:buyer_id] = current_user.id
    params.delete(:state)
    params.permit(:buyer_id, :book_id)
  end
end
