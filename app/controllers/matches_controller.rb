class MatchesController < ApplicationController
  def create

    if params.fetch('state') == 'buying'
      Match.create!(match_params)
    else
    end
    redirect_to root_url, flash: { notice: 'Match Created!' }
  end

  def match_params
    params.require(:match).permit(:id, :buyer_id, :seller_id, :book_id, :state)
  end
end
