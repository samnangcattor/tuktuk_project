Rails.application.routes.draw do
  root "products#index"
  resources :images
end
