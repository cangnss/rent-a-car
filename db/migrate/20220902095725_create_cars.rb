class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :brand
      t.integer :model
      t.string :case_type
      t.float :km
      t.timestamps
    end
  end
end
