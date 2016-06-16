Rails.application.routes.draw do

  resources :articles
  resources :versions, only: [:create, :index]

  root 'welcome#index'

  devise_for :users

  get '/users/:id' => 'users#show', as: :user
  get '/users' => 'users#index', as: :users

end
