require "sidekiq/web"

Rails.application.routes.draw do
  resources :emojis
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "application#welcome"
  
  # Admin
  mount Admin::Engine, at: "admin"
end
