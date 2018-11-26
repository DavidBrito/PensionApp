class CreateMaintenances < ActiveRecord::Migration
  def change
    create_table :maintenances do |t|
      t.references :owner,              references: :user, index: true, null: false
      t.string :title,                  null: false
      t.text :description,              default: ""    
      t.integer :status,                default: 0

      t.timestamps null: false
    end
  end
end
