json.partial! "posts/post", post: @post
json.extract! @post, :content
