Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard"
  resources :boats do
    resources :bookings, only: %i[new create destroy]
  end
  resources :bookings, only: :index do
    member do
      patch :accepted
      patch :denied
    end
  end
end
