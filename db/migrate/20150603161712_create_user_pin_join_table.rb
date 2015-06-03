class CreateUserPinJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :pins do |t|
      # t.index [:user_id, :pin_id]
      # t.index [:pin_id, :user_id]
    end
  end
end
