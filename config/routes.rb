Rails.application.routes.draw do
  devise_for :users
  # devise_for :products
  resources :stocks
  resources :orders
  resources :products

  root "products#index"
  # root  "user#sign_in"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :orders, only: [:index, :show]
      resources :products, only: [:index, :show]
      resources :stocks, only: [:index, :show]
    end
  end
end
