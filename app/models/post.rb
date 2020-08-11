class Post < ApplicationRecord
  validates :title, :author, :description, :content, presence: true

  after_create :destroy_old_posts_if_too_many

  POST_COUNT_LIMIT = 1000
  def destroy_old_posts_if_too_many
    if Post.count > POST_COUNT_LIMIT
      Post.order(id: :asc).limit(Post.count - POST_COUNT_LIMIT).destroy_all
    end
  end
end
