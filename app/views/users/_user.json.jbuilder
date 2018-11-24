json.extract! user, :id, :name, :cpf, :user_type, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
