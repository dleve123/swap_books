class BooksController < ApplicationController
  before_action :authenticate_user!

  def index
    @available_books = Book.available_for_sale
    @books_for_sale = current_user.books_for_sale
   end
end
