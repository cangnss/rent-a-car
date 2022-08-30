class UsersController < ApplicationController
  before_action :current_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show

  end

  def new
    @user = User.new
  end

  def create
    # User.create(name: "Ali Can", surname: "Güneş", age: 25)
    # User.create(name: "Dilek", surname: "Güneş", age: 23)
    # User.create(name: "Cem", surname: "Güneş", age: 18)
    # User.create(name: "Zeynep", surname: "Yalçın", age: 12)
    # User.create(name: "Yusuf", surname: "Yalçın", age: 5)
    # User.create(name: "Ceren", surname: "Güneş", age: 18)
    @user = User.create(user_params)
    if @user.save
      redirect_to @user
    else
      render('new')
    end
  end

  def edit

  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy

    redirect_to user_path
  end

  private 
  def user_params
    params.require(:user).permit(:name, :surname, :age, :avatar)
  end

  def current_user
    @user = User.find(params[:id])
  end
end
