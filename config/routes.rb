Rails.application.routes.draw do

  get "/my_profile", to: "user#show", as: :my_profile

  # get "/all_users", to: "users#index", as: :all_users

  root to: "campuses#index"

  resources :users, only: [:index]
  resources :campuses
  resources :instructs
  resources :enrolls
  resources :bookings
  resources :classrooms
  resources :campus
  resources :courses
  devise_for :users

end
