class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :titulo
      t.string :descricao
      t.string :data
      t.string :delegante
      t.string :delegado
      t.integer :estado_tarefa

      t.timestamps null: false
    end
  end
end
