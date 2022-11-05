class UsersController < ApplicationController

  def create
    user = User.new(name: params[:name], password:params[:password], password_confirmation: params[:password_confirmation])

    # happy/sad paths
    if user.save
      render json: {message: "User created successfully!"}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

end
