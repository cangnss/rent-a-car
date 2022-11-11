class AddressesController < ApplicationController
  layout 'dashboard'
  def new
    @address = Address.new
  end

  def create
    
  end
end
