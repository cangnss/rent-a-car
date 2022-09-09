class PagesController < ApplicationController
  def index
    @cars = Car.all
  end
end
