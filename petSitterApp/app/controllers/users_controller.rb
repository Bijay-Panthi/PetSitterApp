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
    @user = User.create
    User.create(params[:id])
  end

  def edit
    @user = User.find_by(id: params["id"])
  end

  def update

  end

  def destroy
  end

end


# Finish the create step --
  # Define strong params --
  # Create the user --
  # Redirect to the list of all users --

# Get into the edit step
  # Add the form into edit.html.erb (look similar to new.html.erb)

# Get into the update step
  # Update the user (using user_params - strong params)
  # Redirect to the profile page of that user

# Get into the destroy step
  # Button on a page
  # When someone clicks that
    # Delete the user
    # Redirect to the list of all users
