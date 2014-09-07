class Match < ActiveRecord::Base
  belongs_to :buyer, class_name: 'User'
  belongs_to :seller, class_name: 'User'
  belongs_to :book

  scope :waiting_for_buyer, -> { where(buyer_id: nil) }
end
