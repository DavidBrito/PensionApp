class ChangeColumnName < ActiveRecord::Migration
  def change
      rename_column :vacancies, :vacancy_owner_id, :user_id
  end
end
