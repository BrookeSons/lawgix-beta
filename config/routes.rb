Rails.application.routes.draw do


  resources :leases

  resources :contacts
  resources :lessees, controller: 'Lessees', type: 'Lessee'

  root 'visitors#index'

  devise_for :users

  resources :flows
  resources :services


  resources :users


end
