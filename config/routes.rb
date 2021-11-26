Rails.application.routes.draw do
  resources :plants

  root "plants#index"
end
