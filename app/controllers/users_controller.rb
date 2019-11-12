class UsersController < ApplicationController

  def index
    users = User.all
    render json: UserSerializer.new(users).to_serialized_json
  end

  def create

  end

  def verify
    user = User.find{|user| user.username.downcase == params["username"].downcase}
    if (user && user.authenticate(params["password"]) )
      render json: UserSerializer.new(user).to_serialized_json
    else
      render json: {message: "Invalid username or password"}
    end
  end

  def addMeasurement
    byebug

    if(params["measurementObj"]["size"])
      # then this is a measurement based off existing size
      # then create user_clothing obj with measurement and associated to
      # user, clothing, and size id

    else
      # then this is a measurement based off a new size
      # must create new size object
      # then create user_clothing obj with measurements and associated to
      # user, clothing, and size id
    end




  end



end
