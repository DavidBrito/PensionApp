class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name,                   null: false
      t.string :last_name,                    null: false
      t.string :cpf,                          null: false
      t.string :contact,                      null: false

      t.timestamps null: false
    end
    
    add_index :employees, :cpf,               unique: true
  end
end
