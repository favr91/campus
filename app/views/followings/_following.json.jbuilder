json.extract! following, :id, :followed_id, :user_id, :created_at, :updated_at
json.url following_url(following, format: :json)