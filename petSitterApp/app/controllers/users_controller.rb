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


# Finish the create step *
  # Define strong params *
    # Beneath the private keyword *
    # Method called user_params *
  # Create the user using user_params *
  # Redirect to the list of all users *
    # redirect_to "/users" *

# Get into the edit step *
  # Add the form into edit.html.erb (look similar to new.html.erb) *

# Get into the update step
  # Find the right user using params[:id]
  # Call update on that user (passing in user_params)
  # Redirect to the profile page of that user
    # redirect_to "/users/:id"

# Get into the destroy step
  # Button on a page
  # When someone clicks that
    # Delete the user
    # Redirect to the list of all users
