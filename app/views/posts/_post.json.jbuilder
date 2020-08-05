json.extract! post, :id, :title, :author, :description, :created_at, :updated_at
json.url post_url(post)
json.api_url api_post_url(post)
