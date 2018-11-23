class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    
      t.references :owner,          references: :user, index: true, null: false 
      t.string :title,              index: true, null: false
      t.string :description,        null: false
      t.integer :delegated
      t.integer :status,            null: false, default: 0
    
      t.timestamps null: false
      
    end
  end
end
