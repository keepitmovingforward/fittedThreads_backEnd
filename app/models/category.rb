class Category < ApplicationRecord

  has_many :clothing_categories
  has_many :clothings, through: :clothing_categories

end
