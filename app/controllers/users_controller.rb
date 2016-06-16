class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = current_user
    @aticles = @user.versions
  end

  def destroy

  end
end
