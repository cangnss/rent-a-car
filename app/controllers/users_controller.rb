class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show; end

  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render('new')
    end
  end

  def edit; end

  def update
    if @user.update(user_params)
      flash[:success] = ["Başarıyla eklendi."]
      redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages # oluşacak hataları döndürür.
      render('edit')
    end
  end

  def destroy
    if @user.destroy
      redirect_to users_path
    else
      redirect_to users_path
    end
  end

  private 
  def user_params
    params.require(:user).permit(:name, :surname, :age, :avatar)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
