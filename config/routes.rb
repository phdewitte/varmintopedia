Rails.application.routes.draw do

  resources :articles
  # resources :versions, except: [:destroy, :edit, :update]

  resources :categories, only: [:index, :show]


  root 'welcome#index'

  devise_for :users do
    collection do
      patch 'add_admin', :action => :add_admin
    end
  end

  get '/users/:id' => 'users#show', as: :user
  get '/users' => 'users#index', as: :users
  patch '/users/:id' => 'users#update'

  get '/versions/search' => 'versions#search'

  get '/articles/:article_id/versions' => 'versions#index', as: :article_versions

  get '/version/:id' => 'versions#show', as: :version

end
