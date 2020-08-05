class Post < ApplicationRecord
  validates :title, :author, :description, :content, presence: true
end
