Rails.application.routes.draw do

  resources :articles
  resources :versions, only: [:create, :index]

  resources :categories, only: [:index, :show]
  resources :versions, except: [:destroy, :edit, :update]

  root 'welcome#index'

  devise_for :users
end
