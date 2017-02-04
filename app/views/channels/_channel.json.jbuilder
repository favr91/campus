json.extract! channel, :id, :nombre, :descripcion, :user_id, :created_at, :updated_at
json.url channel_url(channel, format: :json)