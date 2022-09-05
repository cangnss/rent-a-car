class AddPropertiesToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :seat, :integer
    add_column :cars, :ac, :boolean
    add_column :cars, :gear, :string
    add_column :cars, :fuel, :string
    add_column :cars, :price, :integer
  end
end
