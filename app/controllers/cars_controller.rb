class CarsController < ApplicationController
  before_action :find_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all
  end

  def show

  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.create(car_params)

    if @car.save
      redirect_to @car
   else
      render :new   
   end
  end

  def edit
  end
  
  def update
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def destroy
    @car.destroy

    redirect_to cars_path
  end

  private 
  def car_params
    params.require(:car).permit(:car_name, :car_brand, :car_model, :car_type, :car_km, :car_image)
  end

  def find_car
    @car = Car.find(params[:id])
  end
end
