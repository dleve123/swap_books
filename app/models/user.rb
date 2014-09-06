class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

	before_save { self.email = email.downcase }

	validates :email,
		format: { with: /\w+@jhu\.edu\z/ },
		presence: true,
		uniqueness: { :case_sensitive => false }

end