Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :services
  resources :berths
  resources :piers
  root 'marina#index', as: 'marina_index'

  resources :boats

  scope '(:locale)' do
    resources :boats
    root 'marina#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
