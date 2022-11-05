class CompaniesController < ApplicationController
  def index
    @companies = Companies.all
  end

  def show
  end

  def edit
  end

  def destroy
  end
end
