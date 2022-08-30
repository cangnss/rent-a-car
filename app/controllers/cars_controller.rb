class CarsController < ApplicationController
  before_action :current_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all
  end

  def show

  end

  def new
    @car = Car.new
    # Car.create(car_name: "Fabia", car_brand: "Skoda",car_model: 2001, car_type: "Hatchback", car_km: 220.000)
    # Car.create(car_name: "ix35", car_brand: "Hyundai", car_model: 2015, car_type: "4x4", car_km: 110.000)
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

  def current_car
    @car = Car.find(params[:id])
  end
end
