Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login', to: 'login#login'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
<<<<<<< HEAD
      resources :users, only: [ :show, :update ] do
        resources :slots, only: [:create ]
        resources :bookings, only: [:create, :show ]
      end

=======
      resources :users, only: [ :show, :update] do
        resources :slots, only: [ :create ]
        resources :bookings, only: [:create, :show ]
      end
      
>>>>>>> 528b0f454e533c36c19d9b710695ff870720186f
      resources :slots, only: [ :index, :show, :destroy ]
    end
  end

end
