Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :products, only: %i[show new create edit update destroy] do
  resources :products, except: %i[index] do
    resources :purchases, only: %i[new create]
  end

  resources :purchases, only: %i[index show destroy]

  resources :sales, only: %i[index show]

  get "users/:id", to: "users#index", as: "user_products"
end
