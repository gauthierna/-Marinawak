Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :boats do
    resources :bookings, only: %i[ new create destroy]
  end
end
