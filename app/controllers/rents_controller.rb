class RentsController < ApplicationController
  before_action :authenticate_user!
  def index
    @rents = Rent.all
  end

  def show
  end

  def edit
  end

  def new
    @rent = Rent.new
  end
end
