class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :postal_code
      t.string :address
      t.integer :number
      t.string :city
      t.string :state
      t.integer :proprietary_id

      t.timestamps null: false
    end
  end
end
