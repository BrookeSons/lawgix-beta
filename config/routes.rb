Rails.application.routes.draw do

  resources :title_abstracts

  resources :deeds

  resources :lawfirms

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :companies
  resources :employees
  resources :lessees
  resources :parcel
  resources :lawfirms
  resources :lawyers
  resources :service_transitions
  resources :dashboards

  root 'visitors#index'
  resources :services do
    member do
      put "receive" => "services#receive", as: :receive 
    end 
  end
  resources :leases
  resources :contacts
  resources :lessees
  resources :companies
  devise_for :users
  resources :flows
  resources :users

end
