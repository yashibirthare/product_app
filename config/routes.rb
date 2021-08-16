Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "homes#index"
  
  resources :user_profiles, only: [:show] 
    
  post '/updated_wishlist_quantity', to: "user_profiles#updated_wishlist_quantity"

  resources :homes
  resources :carts
  resources :wishlists
end
