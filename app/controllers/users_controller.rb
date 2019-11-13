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

    clothing = Clothing.find(params["measurementObj"]["clothing_id"])
    user = User.find(params["measurementObj"]["user_id"])
    if(params["measurementObj"]["size"])
      existing_size = true
      size = Size.find(params["measurementObj"]["size"])
    end

    measurements = params["measurementObj"]["measurements"].each{|k,v| [k, v] }
    sym_meas = measurements.to_a.map{|e| [e[0].to_sym, e[1]]}.to_h

    if (existing_size)
      UserClothing.create(user: user, clothing: clothing, size: size, **sym_meas)
      clothes = Clothing.all
      render json: ClothingSerializer.new(clothes).to_serialized_json
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
