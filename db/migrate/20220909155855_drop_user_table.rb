class DropUserTable < ActiveRecord::Migration[7.0]
  def up
    remove_foreign_key :users, :cars
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
