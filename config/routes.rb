Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root "sessions#index"
  get "/welcome", to:"sessions#index"
  get "/login", to:"sessions#login"
  post "/login", to:"sessions#auth_user"
  get "/home", to:"sessions#home"
end
