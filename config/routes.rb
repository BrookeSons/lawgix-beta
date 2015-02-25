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
  resources :abstractors do
    put "dispatcher" => "arbstractors#dispatch", as: :dispatcher
  end


  resources :service_transitions
  resources :dashboards
  resources :service_dispatcher
  resources :title_abstracts

  root 'visitors#index'
  resources :services do
    member do
      put "receive" => "services#receive", as: :receive
      put "dispatcher" => "services#dispatcher", as: :dispatcher
    end 
  end
  resources :contacts
  devise_for :users
  resources :flows
  resources :users

end
