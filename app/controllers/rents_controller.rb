class RentsController < ApplicationController
  before_action :find_rent, only: [:show, :edit, :update, :destroy]

  def index
    @rents = Rent.all
  end

  def show
  end

  def new
    @rent = Rent.new
  end

  def create
    @rent = Rent.new(rent_params)
    if @rent.save
      redirect_to @rent
    else
      render('new')
    end
  end

  def edit
  end

  private
  def rent_params
    params.require(:rent).permit(:begin, :end, :users, :cars)
  end

  def find_rent
    @rent = Rent.find(params[:id])
  end
end
