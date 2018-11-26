class CreateEmployeesPropertiesJoinTable < ActiveRecord::Migration
  def change
    create_join_table :employees, :properties
    
    add_index :employees_properties, [:employee_id, :property_id], unique: true
    add_foreign_key :employees_properties,   :employees, column: :employee_id
    add_foreign_key :employees_properties,   :properties, column: :property_id
  end
end
