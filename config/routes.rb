Rails.application.routes.draw do

  get root 'items#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :items

  resources :charges
  
  resources :carts do
    resources :join_table_cart_items, only: [:create, :destroy]
  end
  get 'panier', to: 'carts#show'
end
