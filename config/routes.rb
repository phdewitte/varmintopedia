Rails.application.routes.draw do
  resources :articles, except: [:edit, :update] do
    resources :versions, only: [:index, :new, :create]
  end

  devise_for :users

  root "welcome#index"
end
