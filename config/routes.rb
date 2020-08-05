Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  scope :api, as: :api, defaults: { format: :json } do
    resources :posts, controller: 'posts'
  end
end
