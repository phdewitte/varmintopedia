Rails.application.routes.draw do
  resources :articles
  devise_for :users
 root "categories#index"
end
