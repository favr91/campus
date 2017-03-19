Rails.application.routes.draw do

  get 'follows/create'

  get 'follows/destroy'

  get 'user/create'

  get 'comments/create'

  get 'chanel/index'
  get 'perfil/index'
  get 'about/index'


  resources :posts do
    member do
      put "like", to: "posts#upvote"
      put "unlike", to: "posts#downvote"
    end
  end
  resources :channels
  resources :areas
  devise_for :users
  resources :user do
    member do
      get :followers
    end
  end
  get 'welcome/index'



devise_scope :user do
  authenticated :user do
    root 'welcome#index', as: :authenticated_root
  end
  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

match :follow, to: 'follows#create', as: :follow, via: :post
match :unfollow, to: 'follows#destroy', as: :unfollow, via: :post

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
