Rails.application.routes.draw do


  resources :leases
  resource :ServiceCreator, only: [:create]
  resources :contacts
  resources :lessees, controller: 'contacts', type: 'Lessee'

  root 'visitors#index'

  devise_for :users

  resources :flows
  resources :services


  resources :users


end
