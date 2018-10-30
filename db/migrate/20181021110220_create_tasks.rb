class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks, id: false do |t|
    
      t.primary_key :pk_task, null: false
      t.string :title, null: false
      t.string :description, null: false
      t.string :delegated
      t.integer :status, null: false
      
      t.timestamps
      # add_foreign_key :fk_user_task, :pk_user
    end
    
    
  end
end
