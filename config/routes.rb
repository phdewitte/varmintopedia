Rails.application.routes.draw do
  resources :articles

  root 'welcome#index'

  devise_for :users
end
