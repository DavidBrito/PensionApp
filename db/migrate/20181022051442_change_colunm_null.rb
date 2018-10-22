class ChangeColunmNull < ActiveRecord::Migration
  def change
    change_column_null(:tasks, :titulo, false)
  end
end
