Rails.application.routes.draw do

  get 'comments/create'

  get 'chanel/index'
  get 'perfil/index'
  get 'about/index'


  resources :posts do
    member do
      put "like", to: "posts#upvote"
    end
  end
  resources :channels
  resources :followers
  resources :followings
  resources :areas
  devise_for :users
  get 'welcome/index'



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
