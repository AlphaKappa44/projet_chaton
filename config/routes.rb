Rails.application.routes.draw do

  get root 'items#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users

end
