class UpdateAcPropertyToCars < ActiveRecord::Migration[7.0]
  def change
    change_column :cars, :ac, :integer
  end
end
