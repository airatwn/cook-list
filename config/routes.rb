Rails.application.routes.draw do
  devise_for :users
  root to: "photos#index"
  resources :photos
  resources :messages, only: [:index, :create, :new]
end
