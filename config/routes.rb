Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  
  # Defines the root path route ("/")
  root "home#index"

  resources :gossips
  resources :team, only: [:index]
  resources :contact, only: [:index]
  resources :welcome, only: [:show]
  resources :user, only: [:show]
  resources :city, only: [:show]
end
