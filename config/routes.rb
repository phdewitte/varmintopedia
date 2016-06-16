Rails.application.routes.draw do

  resources :articles do
    resources :versions, except: [:destroy, :edit, :update]
  end
  resources :categories, only: [:index, :show]


  root 'welcome#index'

  devise_for :users

  get '/users/:id' => 'users#show', as: :user
  get '/users' => 'users#index', as: :users

end
