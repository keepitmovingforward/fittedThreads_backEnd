class ClothingSerializer < ApplicationController

    def initialize(clothing_object)
      @clothing = clothing_object
    end

    def to_serialized_json
      @clothing.to_json({
        :include => {
                    sizes: {except: [:created_at, :updated_at]},
                    user_clothings: {except: [:created_at, :updated_at]},
                    categories: {except: [:created_at, :updated_at]},
                    user: {except: [:created_at, :updated_at, :password_digest, :measurements, :name]}
                  },
        :except => [:created_at, :updated_at, :user_id]})
    end


end
