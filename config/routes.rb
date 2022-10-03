Rails.application.routes.draw do
  resources :companies
  resources :cities
  resources :countries
  resources :places
  resources :regions
  resources :states
  resources :user_roles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
