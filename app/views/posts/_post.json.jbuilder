json.extract! post, :id, :user_id, :drink_id, :quantity, :created_at, :updated_at
json.url post_url(post, format: :json)
