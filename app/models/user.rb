class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: {case_sensitive: false }

  has_many :clothings

  has_many :user_clothings
  has_many :measured_clothings, through: :user_clothings, source: :clothing

end
