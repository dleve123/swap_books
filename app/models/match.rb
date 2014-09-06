class Match < ActiveRecord::Base
  belongs_to :buyer, class_name: 'User'
  validates :buyer, presence: true

  belongs_to :seller, class_name: 'User'
  validates :book, presence: true
end
