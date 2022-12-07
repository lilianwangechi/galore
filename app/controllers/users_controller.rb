class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    user = User.find_by(id: session[:user])
    render json: user
  end

  def create
    user = User.create!(user_params)
    render json: user, status: :created

  end
  private

  def user_params
    params.permit(:email, :username, :password)
  end


end
