json.extract! task, :id, :titulo, :descricao, :data, :delegante, :delegado, :estado_tarefa, :created_at, :updated_at
json.url task_url(task, format: :json)
