class DropBoardPinJoinTable < ActiveRecord::Migration
 def up
    drop_table :boards_pins
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
