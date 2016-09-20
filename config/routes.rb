Rails.application.routes.draw do
  root "products#index"

  resources :images, only: :index
  resources :products
  resources :brands, only: [:index, :show]
  resources :types, only: :index
  resources :media_arts, only: :index
end
