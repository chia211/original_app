Rails.application.routes.draw do
  devise_for :users
  root "vital_signs#index", profile_id: 1

  resources :profiles do
    post :select, on: :collection
    
    resources :vital_signs do
      collection do
        get :temperature_history
        get :blood_pressure_history
        get :pulse_history
      end
    end
  end
end