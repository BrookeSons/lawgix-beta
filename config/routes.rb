Rails.application.routes.draw do

  root 'visitors#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :projects
  resources :documents
  resources :contacts
  resources :lessors 
  resources :owners
  resources :deeds
  resources :lawfirms
  resources :companies
  resources :servicers
  resources :clients
  resources :employees
  resources :parcels
  resources :leases
  resources :lawyers
  resources :services_users
  resources :abstractors
  resources :service_transitions
  resources :dashboards, only: [:index]
  resources :title_abstracts
  resources :abstractor_dashboards, only: [:index]
  resources :absdashes, only: [:index]

  resources :services do
    member do
      put "accept" => "services#accept", as: :accept
    end

    resources :abstractors  do
       member do
         put "assign" => "abstractors#assign", as: :assign
       end
    end
  end

  devise_for :users
  resources :users

end
