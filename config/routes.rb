Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  root "articles#index"

  resources :articles do
    resources :comments
  end
  resources :tags, only: [ :index, :show ]
  resources :users, except: [ :new, :create, :index, :destroy ]

  namespace :admin do
    resources :articles, except: [ :new, :create ] do
      member do
        patch :update_approval_status
      end
    end
    resources :users, only: [ :index, :show, :edit, :update ]
    resources :tags, only: [ :index, :show, :destroy ]
    get "portal", to: "base#portal"

    get "search", to: "search#index"
    root to: "base#portal"
  end

  get "search", to: "search#index"


  mount Blogger::Base => "/"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
