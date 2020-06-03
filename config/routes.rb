Rails.application.routes.draw do

  get 'carts/create'
  get root 'items#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users

  resources :items
  resources :carts
  
end
