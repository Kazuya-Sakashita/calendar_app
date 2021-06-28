Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'reservations#index'
  resources :reservations
  resources :users, :only => [:show]
end
