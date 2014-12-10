Rails.application.routes.draw do


  resources :contacts

  root 'visitors#index'

  devise_for :users

  resources :flows
  resources :services


  resources :users


end
