Rails.application.routes.draw do

  devise_for :users

  root 'marina#index', as: 'marina_index'

  scope '(:locale)' do
    resources :berth_orders
    resources :berths
    resources :boats
    resources :piers
    resources :service_orders
    resources :services
    resources :users
    root 'marina#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
