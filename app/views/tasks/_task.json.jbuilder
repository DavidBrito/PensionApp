json.extract! task, :id, :title, :description, :delegated, :status, :created_at, :updated_at, :owner_id
json.url task_url(task, format: :json)
