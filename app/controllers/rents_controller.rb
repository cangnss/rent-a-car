class RentsController < ApplicationController
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
