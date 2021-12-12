json.extract! restaurant_like, :id, :user_id, :restaurant_id, :like, :created_at, :updated_at
json.url restaurant_like_url(restaurant_like, format: :json)
