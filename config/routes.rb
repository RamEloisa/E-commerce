Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :sessions
  resources :items, path: '/'
  resources :shopping_carts
  resources :orders
  
end
