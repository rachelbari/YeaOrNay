json.extract! bill, :id, :title, :text, :category_id, :status, :created_at, :updated_at
json.url bill_url(bill, format: :json)
