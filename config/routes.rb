Rails.application.routes.draw do
  root "products#index"

  resources :images
  resources :products
  resources :brands
  resources :types
  resources :media_arts
end
