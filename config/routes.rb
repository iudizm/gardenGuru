Rails.application.routes.draw do
  resources :plants
  get "about", to: "about#index"
  get "home", to: "home#index"

  root "home#index"
end
