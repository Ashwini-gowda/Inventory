Rails.application.routes.draw do
  devise_for :users
  # devise_for :products
  resources :stocks
  resources :orders
  resources :products

  root "products#index"
  # root  "user#sign_in"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
