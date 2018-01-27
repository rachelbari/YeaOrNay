json.extract! poll, :id, :category_id, :poll_text, :created_at, :updated_at
json.url poll_url(poll, format: :json)
