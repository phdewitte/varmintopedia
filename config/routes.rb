Rails.application.routes.draw do
  resources :articles, except: [:edit, :update] do
    resources :versions, only: [:index, :new, :create]
  end

  root 'welcome#index'

  devise_for :users

end
