module MatchesHelper

  def get_sender_name(message)
    user = User.find(message.sent_messageable_id)
    name = user.name || user.email
    "#{name}: "
  end

  def user_messages(user,other_user)

    ActsAsMessageable::Message.where(
        "((sent_messageable_type = 'User' \
            AND sent_messageable_id = :user \
            AND received_messageable_id = :other \ 
            AND sender_delete = 'f' \
            AND sender_permanent_delete = 'f') \
        OR (received_messageable_type = 'User' \
            AND received_messageable_id = :user \
            AND sent_messageable_id = :other \
            AND recipient_delete = 'f' \
            AND recipient_permanent_delete = 'f'))",
        user: user.id, other: other_user.id
      )

    #records_array = ActiveRecord::Base.connection.execute(sql)
  end
end