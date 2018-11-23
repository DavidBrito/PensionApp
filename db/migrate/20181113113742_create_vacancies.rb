class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.decimal :value,               default: 0
      t.integer :status,              default: 0
      t.references :room,             index: true, null: false
      t.references :vacancy_owner,    index: true, references: :user

      t.timestamps null: false
    end
  end
end
