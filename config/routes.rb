Rails.application.routes.draw do
  devise_for :users
  resources :vital_signs, only: [:index, :create]
  resources :profiles, only: [:index, :create]
  
end
