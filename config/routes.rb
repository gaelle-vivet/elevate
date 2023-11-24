Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/show'
  devise_for :users
  root to: "pages#home"
  resources :bookings, only: [:show, :index, :destroy]
  resources :lessons, only: %i[index show] do
    resources :bookings, only: %i[create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")

end
