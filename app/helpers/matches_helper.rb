module MatchesHelper

  def get_sender_name(message)
    user = User.find(message.sent_messageable_id)
    user.name || user.email
  end
end