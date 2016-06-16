Rails.application.routes.draw do

  resources :articles
  resources :versions, only: [:new, :create, :index]

  resources :categories, only: [:index, :show]
  resources :versions, except: [:destroy, :edit, :update]

  root 'welcome#index'

  devise_for :users

  get '/users/:id' => 'users#show', as: :user
  get '/users' => 'users#index', as: :users

end
