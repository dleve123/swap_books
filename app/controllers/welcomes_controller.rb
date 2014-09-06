class WelcomesController < ApplicationController
  def home
    redirect_path = current_user ? books_path : new_user_registration_path
    redirect_to redirect_path
  end
end
