Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "ttweets#new"

  resources :ttweets, only: [:show, :new, :create]
  resources :timelines, only: [:show, :new, :create]
end
