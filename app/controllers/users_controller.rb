class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit

  end

  def new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    @user = User.update(user_params)
  end

  def destroy
  end

  private
  def user_params
    params.require(user).permit(:name, :email, :profile, :password, :password_confirmation)
  end
end
