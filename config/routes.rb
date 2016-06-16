Rails.application.routes.draw do

  resources :articles
  resources :versions, only: [:create, :index]

  root 'welcome#index'

  devise_for :users

  get '/users/:id' => 'users#show', as: :user
  get '/users' => 'users#index', as: :users

  get '/versions/search' => 'versions#search'

  get '/articles/:article_id/versions' => 'versions#index', as: :article_versions

  get '/version/:id' => 'versions#show', as: :version

end
