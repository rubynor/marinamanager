# == Route Map
#
#                   Prefix Verb   URI Pattern                      Controller#Action
#                  seasons GET    /seasons(.:format)               seasons#index
#                          POST   /seasons(.:format)               seasons#create
#               new_season GET    /seasons/new(.:format)           seasons#new
#              edit_season GET    /seasons/:id/edit(.:format)      seasons#edit
#                   season GET    /seasons/:id(.:format)           seasons#show
#                          PATCH  /seasons/:id(.:format)           seasons#update
#                          PUT    /seasons/:id(.:format)           seasons#update
#                          DELETE /seasons/:id(.:format)           seasons#destroy
#         new_user_session GET    /users/sign_in(.:format)         devise/sessions#new
#             user_session POST   /users/sign_in(.:format)         devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)        devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)    devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)   devise/passwords#edit
#            user_password PATCH  /users/password(.:format)        devise/passwords#update
#                          PUT    /users/password(.:format)        devise/passwords#update
#                          POST   /users/password(.:format)        devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)          devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)         devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)            devise/registrations#edit
#        user_registration PATCH  /users(.:format)                 devise/registrations#update
#                          PUT    /users(.:format)                 devise/registrations#update
#                          DELETE /users(.:format)                 devise/registrations#destroy
#                          POST   /users(.:format)                 devise/registrations#create
#                     root GET    /                                marina#home
#                     home GET    /home(.:format)                  marina#home
#                 boatramp GET    /boatramp(.:format)              marina#boatramp
#                 contacts GET    /contacts(.:format)              contacts#new
#                    index GET    /index(.:format)                 marina#index
#                 batplass GET    /batplass(.:format)              marina#berths
#                tjenester GET    /tjenester(.:format)             marina#services
#                          GET    /contacts(.:format)              contacts#new
#                          POST   /contacts(.:format)              contacts#create
#              new_contact GET    /contacts/new(.:format)          contacts#new
#             berth_orders GET    /berth_orders(.:format)          berth_orders#index
#                          POST   /berth_orders(.:format)          berth_orders#create
#          new_berth_order GET    /berth_orders/new(.:format)      berth_orders#new
#         edit_berth_order GET    /berth_orders/:id/edit(.:format) berth_orders#edit
#              berth_order GET    /berth_orders/:id(.:format)      berth_orders#show
#                          PATCH  /berth_orders/:id(.:format)      berth_orders#update
#                          PUT    /berth_orders/:id(.:format)      berth_orders#update
#                          DELETE /berth_orders/:id(.:format)      berth_orders#destroy
#                    boats GET    /boats(.:format)                 boats#index
#                          POST   /boats(.:format)                 boats#create
#                 new_boat GET    /boats/new(.:format)             boats#new
#                edit_boat GET    /boats/:id/edit(.:format)        boats#edit
#                     boat GET    /boats/:id(.:format)             boats#show
#                          PATCH  /boats/:id(.:format)             boats#update
#                          PUT    /boats/:id(.:format)             boats#update
#                          DELETE /boats/:id(.:format)             boats#destroy
#                    users GET    /users(.:format)                 users#index
#                          POST   /users(.:format)                 users#create
#                 new_user GET    /users/new(.:format)             users#new
#                edit_user GET    /users/:id/edit(.:format)        users#edit
#                     user GET    /users/:id(.:format)             users#show
#                          PATCH  /users/:id(.:format)             users#update
#                          PUT    /users/:id(.:format)             users#update
#                          DELETE /users/:id(.:format)             users#destroy
#                          GET    /                                marina#home

Rails.application.routes.draw do

  resources :seasons
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
  resources :boats
  resources :users
  root 'marina#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
