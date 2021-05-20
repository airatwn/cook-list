Rails.application.routes.draw do
  devise_for :users
  root to: "photo#index"
  resources :photo, only: [:index, :new, :create]
end
