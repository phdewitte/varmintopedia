class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = current_user
    @aticles = @user.versions
  end

  def update
    @user = User.find(params[:id])
    @user.update_attribute :admin, true
    redirect_to users_path
  end
end
