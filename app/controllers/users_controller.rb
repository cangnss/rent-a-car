class UsersController < ApplicationController
  layout 'dashboard'

  def profile
    @user = User.find(params[:id])
  end
end
