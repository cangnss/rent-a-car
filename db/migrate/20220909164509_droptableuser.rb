class Droptableuser < ActiveRecord::Migration[7.0]
  def up
    drop_table :users, if_exists: true
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
