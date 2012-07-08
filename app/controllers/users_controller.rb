class UsersController < ApplicationController
  def show
    @user = User.find params[:id]
  end

  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    @user.update_attributes params[:user]
    redirect_to @user
  end
end