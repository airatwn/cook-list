Rails.application.routes.draw do
  devise_for :users
  root to: "photos#index"
  resources :photos, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :messages, only: [:index, :create]
end
