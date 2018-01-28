json.extract! bills_politician, :id, :bill_id, :politician_id, :yea, :nay, :created_at, :updated_at
json.url bills_politician_url(bills_politician, format: :json)
