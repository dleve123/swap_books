class MatchMailer < ActionMailer::Base

   default from: 'www.swapbooks.me'

  def match_email(user)
    @user = user
    @url  = root_url
    mail(to: @user.email, subject: "You've got a match!")
  end

end
