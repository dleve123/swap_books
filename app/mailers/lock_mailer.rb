class LockMailer < ActionMailer::Base
  default from: 'www.swapbooks.me'

  def match_email(seller, buyer, book)
    @buyer = buyer

    # TODO: replace @url with the match path
    @match_path = root_url
    @book = book

    mail(to: seller.email, subject: "Match! - #{@book.name}")
  end

end
