class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :number,                 default: ""
      t.references :property,            null: false

      t.timestamps null: false
    end
  end
end
