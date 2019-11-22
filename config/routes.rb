Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :products, only: %i[show new create edit update destroy] do
  resources :products do
    resources :purchases, only: %i[new create]
  end

  resources :purchases, only: %i[index show destroy]

  resources :sales, only: %i[index show]
  resources :users, only: %i[show]

  # get "users/:id/information", to: "users#information", as: "user_details"
  get "users/:id/edit", to: "users#edit", as: "edit_user_details"
  patch "users/:id", to: "users#update"
  put "users/:id", to: "users#update"

  get "users/:id", to: "users#index", as: "user_products"
end
