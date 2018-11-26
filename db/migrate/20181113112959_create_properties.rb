class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name,                                  null: false, default: ""
      t.string :postal_code,                           null: false
      t.string :address,                               null: false
      t.integer :number,                               default: 0
      t.string :city,                                  null: false
      t.string :state,                                 null: false
      t.references :proprietary,                       references: :user, null: false, index: true

      t.timestamps null: false
    end
    
    add_index :properties, :postal_code         
    add_index :properties, :address
    add_index :properties, :city
    add_index :properties, :state
 
  end
end
