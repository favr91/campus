Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :channels
  resources :followers
  resources :followings
  resources :areas
  devise_for :users
  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
