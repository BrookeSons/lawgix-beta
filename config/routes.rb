Rails.application.routes.draw do

  resources :projects do
    member do
      resources :services
      resources :contacts
      resources :title_abstracts
      resources :parcels
    end
  end

  resources :documents

  root 'visitors#index'
  resources :title_abstracts
  resources :deeds
  resources :lawfirms

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :companies
  resources :employees
  resources :lessees
  resources :parcels
  resources :leases
  resources :lawfirms
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

  resources :contacts
  devise_for :users
  resources :flows
  resources :users

end
