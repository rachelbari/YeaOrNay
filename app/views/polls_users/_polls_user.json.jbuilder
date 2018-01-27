json.extract! polls_user, :id, :poll_id, :user_id, :yea, :nay, :created_at, :updated_at
json.url polls_user_url(polls_user, format: :json)
