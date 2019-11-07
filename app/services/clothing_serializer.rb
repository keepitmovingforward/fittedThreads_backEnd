class ClothingSerializer < ApplicationController

    def initialize(clothing_object)
      @clothing = clothing_object
    end

    def to_serialized_json
      @clothing.to_json({
        :include => {measurements: {except: [:created_at, :updated_at]},
                    sizes: {except: [:created_at, :updated_at]},
                    categories: {except: [:created_at, :updated_at]},
                    user: {except: [:created_at, :updated_at]}
                  },
        :except => [:created_at, :updated_at, :user_id]})
    end


end
