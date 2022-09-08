class AddCarToAddress < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses, :car, null: false, foreign_key: true
  end
end
