Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :blog_posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "my_stories" => "blog_posts#your_posts"

  root 'blog_posts#index'
end
