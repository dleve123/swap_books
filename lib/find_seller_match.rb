class FindSellerMatch
  attr_reader :book

  def initialize(book)
    @book = book
  end

  def find
    Match.waiting_for_buyer.where(book: book).first
  end
end
