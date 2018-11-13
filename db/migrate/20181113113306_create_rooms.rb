class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :number
      t.integer :property_id

      t.timestamps null: false
    end
  end
end
