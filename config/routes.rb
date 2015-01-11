Rails.application.routes.draw do

  resources :lawfirms

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :companies

  resources :lessees

  resources :parcels

  root 'visitors#index'
  resources :services
  resources :leases
  resources :contacts
  resources :lessees
  resources :companies
  devise_for :users
  resources :flows
  resources :users

end
