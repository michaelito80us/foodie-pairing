Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login', to: 'login#login'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [ :show, :update ] do
        resources :slots, only: [:create, :show ]
        resources :bookings, only: [:create, :show ]
      end

      resources :bookings, only: [:update] do
        resources :slots, only: [:update]
      end

      resources :slots, only: [ :index, :show, :destroy ]
    end
  end

end
