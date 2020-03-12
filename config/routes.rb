Rails.application.routes.draw do

  root to: 'products#index'
  # root to: 'products#show'
  # root to: 'buys#index'
  resources :products, only: [:show] do
    resources :buys, only: [:index]
  end
  
end