class DropPinUsersTable < ActiveRecord::Migration
  def up
    drop_table :pins_users
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
