Rails.application.routes.draw do

  root 'visitors#index'
  resources :services
  resources :leases
  resource :servicecreator, only: [:create]
  resources :contacts
  resources :lessees, controller: 'contacts', type: 'Lessee'
  devise_for :users
  resources :flows
  resources :users
end
