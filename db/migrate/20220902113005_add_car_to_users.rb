class AddCarToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :car, null: true, foreign_key: true
  end
end
