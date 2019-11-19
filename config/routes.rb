Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: %i[show new create edit update destroy] do
    resources :purchases, only: %i[new create]
  end
  resources :purchases, only: %i[index show destroy]

  get "users/:id", to: "users#index", as: "user"
end
