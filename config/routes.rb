Rails.application.routes.draw do
  root to: "ttweets#new"

  resources :ttweets, only: [:show, :new, :create]
end
