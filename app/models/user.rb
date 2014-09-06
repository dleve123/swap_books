class User < ActiveRecord::Base
  validates :email, format: /@/, presence: true, uniqueness: true
end
