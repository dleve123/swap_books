class Book < ActiveRecord::Base
  has_many :matches

  validates :name, presence: true

  # TODO: Validate that this is isn't in a range, but is either 10 or 13.
  validates :isbn, presence: true, length: { in: 10..13 }, uniqueness: true
end
