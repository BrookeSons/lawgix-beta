Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :companies

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
  resources :clients
end
