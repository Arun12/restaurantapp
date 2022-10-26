Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "restaurants#index"
  resources :restaurants do
    resources :reviews
  end
  resources :dishes do
    resources :reviews
  end
  resource :users
  resources :admins
  resources :orders
end
