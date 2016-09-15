Rails.application.routes.draw do
  root "products#index"
  resources :images
  resources :products
end
