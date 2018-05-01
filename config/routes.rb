Rails.application.routes.draw do

  resources :seasons
  resources :orders
  devise_for :users

  root 'marina#home'
  # Static pages:
  get 'home', to: 'marina#home'
  get 'boatramp', to: 'marina#boatramp'
  get 'contacts', to: 'contacts#new'
  get 'index', to: 'marina#index'
  get 'batplass', to: 'marina#berths'
  get 'tjenester', to: 'marina#services'

  match '/contacts',  to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]


  resources :berth_orders
  resources :berths
  resources :boats
  resources :piers
  resources :service_orders
  resources :services
  resources :users
  root 'marina#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
