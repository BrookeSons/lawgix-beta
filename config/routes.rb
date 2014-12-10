Rails.application.routes.draw do



  root 'visitors#index'

  resources :flows

  resources :services

  devise_for :users
  resources :users


end
