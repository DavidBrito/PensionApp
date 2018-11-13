class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.decimal :value
      t.integer :status
      t.integer :room_id
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
