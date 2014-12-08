Rails.application.routes.draw do



  root 'services#index'

  resources :flows

  resources :services

  devise_for :users


end
