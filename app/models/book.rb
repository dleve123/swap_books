class Book < ActiveRecord::Base
  has_many :matches

  validates :name, presence: true
  validates :isbn, presence: true, isbn_format: true, uniqueness: true
end
