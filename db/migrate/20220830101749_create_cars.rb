class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :car_name
      t.string :car_brand
      t.integer :car_model
      t.string :car_type
      t.float :car_km
      add_column :cars, :car_image, :attachment
      
      t.timestamps
    end
  end
end
