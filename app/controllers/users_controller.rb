class UsersController < ApplicationController

  def create
    user = User.new(name: params[:name], password:params[:password], password_confirmation: params[:password_confirmation])
  end

end
