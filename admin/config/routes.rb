Admin::Engine.routes.draw do
  resources :emojis
  root to: "application#welcome"
end
