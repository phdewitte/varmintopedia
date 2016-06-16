Rails.application.routes.draw do

  resources :articles, except: [:create]
  resources :versions, only: [:create, :index]

  devise_for :users

  root "categories#index"
end
