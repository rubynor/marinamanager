Rails.application.routes.draw do

  # Covered by resources :berths
  #get 'berths/new'

  get 'user/dashboard'

  get 'admin/dashboard'


  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'home', to: 'static_pages#home'
  get 'batplass', to: 'static_pages#batplass'
  get 'batslipp', to: 'static_pages#batslipp'
  get 'tjenester', to: 'static_pages#tjenester'

  resources "contacts", only: [:new, :create]
  resources :berths
	resources :boats
  resources :users

  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end