class BooksController < ApplicationController
  before_action :authenticate_user!

  def index
    @books = Book.available_for_sale
  end
end
