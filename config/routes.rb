Rails.application.routes.draw do

  resources :articles do
    resources :versions, except: [:destroy, :edit, :update]
  end
  resources :categories, only: [:index, :show]


  root 'welcome#index'

  devise_for :users do
    collection do
      patch 'add_admin', :action => :add_admin
    end
  end

  get '/users/:id' => 'users#show', as: :user
  get '/users' => 'users#index', as: :users
<<<<<<< HEAD

  get '/versions/search' => 'versions#search'

  get '/articles/:article_id/versions' => 'versions#index', as: :article_versions

  get '/version/:id' => 'versions#show', as: :version

=======
  patch '/users/:id' => 'users#update'
>>>>>>> d7b6fa9e87be63f5a542e755475fd34073e7f13c
end
