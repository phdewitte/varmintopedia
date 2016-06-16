Rails.application.routes.draw do

  resources :articles, except: [:create]
  resources :versions, only: [:create, :index]

  root 'welcome#index'

  devise_for :users
end
