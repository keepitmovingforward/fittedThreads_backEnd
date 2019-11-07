class ClothingsController < ApplicationController

  def index
    clothes = Clothing.all
    categories = Category.all.to_json({:except => [:created_at, :updated_at]})
    brands = Clothing.all.map{ |clothing| clothing.brand}.uniq.sort().to_json


    render json: {
      clothing: JSON.parse(ClothingSerializer.new(clothes).to_serialized_json),
      categories: JSON.parse(categories),
      brands: JSON.parse(brands)
    }

  end

end
