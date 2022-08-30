class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.integer :age
      add_column :users, :avatar, :attachment

      t.timestamps
    end
  end
end
