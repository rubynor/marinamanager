Rails.application.routes.draw do

  devise_for :users

  root 'marina#home'
  # Static pages:
  get 'home', to: 'marina#home'
  get 'boatramp', to: 'marina#boatramp'
  get 'contact', to: 'marina#contact'
  get 'index', to: 'marina#index'
  get 'batplass', to: 'marina#berths'
  get 'tjenester', to: 'marina#services'



  scope '(:locale)' do
    resources :berth_orders
    resources :berths
    resources :boats
    resources :piers
    resources :service_orders
    resources :services
    resources :users
    root 'marina#home'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
