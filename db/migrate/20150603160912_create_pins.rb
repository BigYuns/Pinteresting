class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.text :description
      t.string :url
      t.integer :likes

      t.timestamps null: false
    end
  end
end
