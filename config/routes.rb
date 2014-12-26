Rails.application.routes.draw do

  resources :lessees

  resources :parcels

  root 'visitors#index'
  resources :services
  resources :leases
  resources :lease_entry
  resource :servicecreator, only: [:create]
  resources :contacts
  resources :lessees, controller: 'contacts', type: 'Lessee'
  devise_for :users
  resources :flows
  resources :users
end
