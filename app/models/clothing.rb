class Clothing < ApplicationRecord

  belongs_to :user
  has_many :user_clothings
  has_many :measurements, through: :user_clothings, source: :clothing 
  has_many :sizes
  has_many :clothing_categories
  has_many :categories, through: :clothing_categories


end
