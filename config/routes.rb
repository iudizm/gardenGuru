Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  # Standalone routes for main pages (must come before resource routes)
  get "journal", to: "journal_entries#index"
  get "reminders", to: "reminders#index"
  get "journal/new", to: "journal_entries#new"
  get "reminders/new", to: "reminders#new"
  post "journal_entries", to: "journal_entries#create"
  post "reminders", to: "reminders#create"
  
  resources :plants do
    resources :journal_entries, only: [:index, :new, :create]
    resources :reminders, only: [:index, :new, :create]
  end
  
  resources :journal_entries, except: [:index, :new, :create]
  resources :reminders, except: [:index, :new, :create]
  
  get "about", to: "about#index"
  get "home", to: "home#index"

  root "home#index"
end
