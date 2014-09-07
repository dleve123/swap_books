class BooksController < ApplicationController
  before_action :authenticate_user!

  def index
    @all_books = Book.available_for_sale
    @books_for_sale = current_user.books_for_sale
    @books_to_buy = current_user.books_to_buy
   end
end
