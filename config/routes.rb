Rails.application.routes.draw do
  namespace :api do
    resources :plan_templates do
      resources :workout_templates
    end

    resources :users do
      resources :plans do
        resources :workouts
      end
    end
    resource :auth, only: %i[create]
  end
  root to: 'authors#index'
end
