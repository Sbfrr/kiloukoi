class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

private

  def user_params
    @user_params = params.require(:user).permit(:email, :firstname, :lastname, :birthdate, :address, :zipcode, :city)
  end

  def set_user
    @user = User.find(params[:id])
  end

end