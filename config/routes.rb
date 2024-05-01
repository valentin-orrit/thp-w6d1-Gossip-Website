Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  
  # Defines the root path route ("/")
  root "home#index"
  
  # get "/team", to: "team#show"
  # get "/contact", to: "contact#show"
  # get 'welcome/:first_name', to: "welcome#show"
  # get "user/:id", to: "user#show", as: 'user'

  resources :gossips
  resources :team, only: [:index]
  resources :contact, only: [:index]
  resources :welcome, only: [:show]
  resources :user, only: [:show]
end
