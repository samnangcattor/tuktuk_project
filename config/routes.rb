Rails.application.routes.draw do
  devise_for :users
  root "products#index"

  resources :images, only: :index
  resources :products
  resources :brands, only: [:index, :show]
  resources :types, only: [:index, :show]
  resources :media_arts
  resources :admin
  resources :carts
end
