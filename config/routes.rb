Rails.application.routes.draw do
  devise_for :users
  resources :vital_signs, only: [:index, :create]
end
