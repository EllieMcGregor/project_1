Rails.application.routes.draw do

  get "/my_profile", to: "user#show", as: :my_profile  
  root to: "campuses#index"

  resources :users, only: [:index]
  resources :campuses
  resources :instructs
  resources :enrolls
  resources :bookings
  resources :classrooms
  resources :campus
  resources :courses
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }


end
