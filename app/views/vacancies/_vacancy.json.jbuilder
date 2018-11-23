json.extract! vacancy, :id, :value, :status, :room_id, :owner_id, :created_at, :updated_at
json.url vacancy_url(vacancy, format: :json)
