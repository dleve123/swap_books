class WelcomesController < ApplicationController
  before_action :conditionally_redirect_to_books_index

  def home
  end

  def conditionally_redirect_to_books_index
    redirect_to books_path if current_user
  end
end
