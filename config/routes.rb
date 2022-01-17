Rails.application.routes.draw do
  resources :user_variants
  resources :effects
  resources :prescriptions
  resources :ingredients
  resources :user_rows
  resources :chemicals
  resources :drugs
  resources :variants
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
