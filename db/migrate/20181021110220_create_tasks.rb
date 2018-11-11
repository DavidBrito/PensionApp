class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    
      t.references :user, index: true
      t.string :title, null: false
      t.string :description, null: false
      t.integer :delegated
      t.integer :status, null: false, default: 0
    
      t.timestamps
      
    end
  end
end
