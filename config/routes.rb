Rails.application.routes.draw do
  root 'static_pages#top'
  resources :services, only: [:index, :show] do
    resources :reviews, only: [:new, :create, :destroy] do
      resources :review_likes, only: [:create, :destroy]
    end
    resources :menus, only: [:index, :show] do
      resources :menu_likes, only: [:create, :destroy]
    end
  end
  resources :users, only: [:new, :create]
  resource :profile, only: [:show, :edit, :update]
  get 'like_menus', to: 'menus#like_menus'
  get 'all_menus', to: 'menus#all_menus'
  get 'menu_rank', to: 'menus#menu_rank'
  get 'service_rank', to: 'services#service_rank'

  get 'user_policy', to: 'static_pages#user_policy'
  get 'privacy_policy', to: 'static_pages#privacy_policy'
  get 'inquiry', to: 'static_pages#inquiry'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  post "oauth/callback", to: "oauths#callback"
  get "oauth/callback", to: "oauths#callback"
  get "oauth/:provider", to: "oauths#oauth", as: :auth_at_provider
end
