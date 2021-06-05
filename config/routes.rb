Rails.application.routes.draw do
  root "home#top"
  get "/" => "home#top"
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/:id" => "posts#show", as: :post
  get "posts/:id/edit" => "posts#edit", as: :edit_post
  post "posts/:id/update" => "posts#update", as: :update_post
  post "posts/:id/destroy" => "posts#destroy", as: :destroy_post
  get "login" => "users#login_page"
  post "login" => "users#login"
  post "logout" => "users#logout"
  
  resources :users
  get "users/:id/likes" => "users#likes", as: :likes_user
  get "users/:id/following" => "users#following", as: :following_user
  get "users/:id/followers" => "users#followers", as: :followers_user

  post "likes/:recipe_id/create" => "likes#create", as: :create_like
  post "likes/:recipe_id/destroy" => "likes#destroy", as: :destroy_like
  
  resources :relationships, only: [:create, :destroy]
end
