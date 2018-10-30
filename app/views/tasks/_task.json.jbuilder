json.extract! task, :pk_task, :title, :description, :delegated, :status, :created_at, :updated_at
json.url task_url(task, format: :json)
