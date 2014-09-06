class Book < ActiveRecord::Base
  has_many :matches

  validates :name, presence: true
  validates :isbn, presence: true, length: { in: 10..13 }, uniqueness: true
end
