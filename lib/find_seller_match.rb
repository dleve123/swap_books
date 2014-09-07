class FindSellerMatch
  attr_reader :book

  def initialize(book)
    @book = book
  end

  def find
    # So I want to find the first seller for this book.
    #   This means I only want to consider NON COMPLETE matches
    #     NON COMPLETE matches means that their is just a seller_id
    possible_buy_matches = Match.waiting_for_buyer.where(book: book)
  end
end
