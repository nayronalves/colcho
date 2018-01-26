Rails.application.routes.draw do
  resources :employees
  resources :cars
  resources :users
  resource :confirmation, only: [:show]
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
