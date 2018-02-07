Rails.application.routes.draw do

  get 'berths/new'

  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'home', to: 'static_pages#home'
  get 'batplass', to: 'static_pages#batplass'
  get 'batslipp', to: 'static_pages#batslipp'
  get 'tjenester', to: 'static_pages#tjenester'
  get 'contact', to: 'static_pages#contact'
 
  
  resources :berths
	resources :boats

  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
