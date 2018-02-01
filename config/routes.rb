Rails.application.routes.draw do

  get 'home', to: 'static_pages#home'
  get 'contact', to: 'static_pages#contact'

	resources :boats

  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
