class Book < ActiveRecord::Base
  has_many :matches

  validates :name, presence: true
  validates :isbn, presence: true, isbn_format: true, uniqueness: true

  def self.available_for_sale
    joins(:matches).where.not(matches: { seller_id: nil }).uniq
  end
end
