Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :companies

  resources :lessees

  resources :parcels

  root 'visitors#index'
  resources :services
  resources :leases
  resources :contacts
  resources :lessees
  devise_for :users
  resources :flows
  resources :users

end
