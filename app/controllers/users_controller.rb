class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params['id'])
  end

  def create
    @user = User.create(user_params)
    redirect_to user_url(@user)
  end

  private
  def user_params
    params.require(:user).permit(:name, :age)
  end
end
