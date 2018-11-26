class AddResponseToMaintenances < ActiveRecord::Migration
  def change
    add_column :maintenances, :response, :text, {default: ''}
  end
end
