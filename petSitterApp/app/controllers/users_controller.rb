class UsersController < ApplicationController

  def index
    @userall = User.all
  end

  def show
    @user = User.find_by(id: params["id"])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to @user, notice: 'User was successfully created'
  end

  def edit
    @user = User.find_by(id: params["id"])
  end

  def update
    @user = User.update
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy

    redirect_to @user, notice: 'User was successfully deleted'
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
