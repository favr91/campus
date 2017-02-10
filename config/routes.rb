Rails.application.routes.draw do
  
  resources :comments
  resources :posts
  resources :channels
  resources :followers
  resources :followings
  resources :areas
  devise_for :users
  get 'welcome/index'
  get 'personas/index'



devise_scope :user do
  authenticated :user do
    root 'welcome#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
