json.extract! post, :id, :contenido, :tipo_post, :me_gusta, :user_id, :channel_id, :created_at, :updated_at
json.url post_url(post, format: :json)