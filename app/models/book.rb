class Book < ActiveRecord::Base
  validates :name, presence: true
  validates :isbn, presence: true, length: { in: 10..13 }
end
