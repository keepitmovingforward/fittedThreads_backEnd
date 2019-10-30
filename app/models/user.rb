class User < ApplicationRecord

  has_many :clothings

  has_many :user_clothings
  has_many :measured_clothings, through: :user_clothings, source: :clothing

end
