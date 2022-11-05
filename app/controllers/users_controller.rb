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

  def update
    user = User.find_by(id: params[:id])

    user.name = params[:name] || user.name
    user.password = params[:password] || user.password
    user.password_confirmation = params[:password_confirmation] || user.password_confirmation

    # happy/sad paths
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}, status: 422
    end
  end

end
