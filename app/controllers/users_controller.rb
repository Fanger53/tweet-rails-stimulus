class UsersController < ApplicationController
  before_action :authenticate_user!
  
  private
  
  def user_params
    params.require(:user).permit(:name, :username, :user_id, :group_id, :created_at, :avatar)
  end
  end