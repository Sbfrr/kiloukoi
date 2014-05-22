class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def edit
  end

  def update
    current_user.update(user_params)
    redirect_to profile_path
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :address, :zipcode, :city, :birthdate)
  end

end