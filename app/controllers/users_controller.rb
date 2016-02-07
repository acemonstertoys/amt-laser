class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create
  end

  def toggle_admin
    @user = User.find(params[:id])
    @user.toggle!(:is_admin)
  end
end
