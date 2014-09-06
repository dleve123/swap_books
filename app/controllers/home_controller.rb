class HomeController < ApplicationController
  def show
    @user = User.new
  end
end
