class LockMailer < ActionMailer::Base
  default from: 'www.swapbooks.me'

  def lock_email(seller, buyer, book, time)
    @buyer = buyer

    # TODO: replace @url with the match path
    @match_path = root_url
    @book = book
    @time = time

    mail( to: seller.email, 
          cc: buyer.email, 
          subject: "You're all set!")
  end

end
