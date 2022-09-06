class RegistrationsController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]

  def show; end

  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render('new')
    end
  end

  private 
  def user_params
    params.require(:user).permit(:name, :surname, :age, :email, :password_digest, :avatar)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
