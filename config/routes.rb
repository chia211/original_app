Rails.application.routes.draw do
  devise_for :users
  root "vital_signs#index"
  resources :vital_signs, only: [:index, :create]
  resources :profiles do
    post :select, on: :collection
  end
  
end
