class UserSerializer < ApplicationController

    def initialize(user_object)
      @user = user_object
    end

    def to_serialized_json
      @user.to_json(
        {
        :include => {clothings: {except: [:created_at, :updated_at]},
                    measured_clothings: {except: [:created_at, :updated_at]},
                  },
        :except => [:created_at, :updated_at]
      }
      )
    end


end
