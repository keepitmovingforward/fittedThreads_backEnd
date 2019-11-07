class Clothing < ApplicationRecord

  belongs_to :user
  has_many :user_clothings
  has_many :user_measurements, through: :user_clothings, source: :user 
  has_many :sizes
  has_many :clothing_categories
  has_many :categories, through: :clothing_categories


end
