class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :tasks,          :users,      column: :owner_id,         on_delete: :cascade
    add_foreign_key :phone_numbers,  :users,      on_delete: :cascade
    add_foreign_key :properties,     :users,      column: :proprietary_id
    add_foreign_key :rooms,          :properties, on_delete: :cascade
    add_foreign_key :vacancies,      :rooms,      on_delete: :cascade
    add_foreign_key :vacancies,      :users,      column: :vacancy_owner_id, on_delete: :cascade
    add_foreign_key :maintenances,   :users,      column: :owner_id,         on_delete: :cascade
  end
end
