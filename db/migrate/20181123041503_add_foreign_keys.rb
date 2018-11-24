class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :tasks,          :users, column: :owner_id
    add_foreign_key :phone_numbers,  :users
    add_foreign_key :properties,     :users, column: :proprietary_id
    add_foreign_key :rooms,          :properties
    add_foreign_key :vacancies,      :rooms
    add_foreign_key :vacancies,      :users, column: :vacancy_owner_id
    add_foreign_key :maintenances,   :users, column: :owner_id
  end
end
