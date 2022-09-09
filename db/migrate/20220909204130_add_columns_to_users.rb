class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :birthday, :date
    add_column :users, :avatar, :attachment
  end
end
