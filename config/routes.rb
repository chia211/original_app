Rails.application.routes.draw do
  devise_for :users
  root "vital_signs#index", profile_id: 1

  resources :profiles do
    post :select, on: :member
    
    resources :vital_signs do
      collection do
        get :temperature_history
        get :blood_pressure_history
        get :pulse_history
        get :breathing_history
        get :note_history
      end
    end

    resources :memos
  end


end