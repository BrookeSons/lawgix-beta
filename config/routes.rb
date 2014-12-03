Rails.application.routes.draw do

  resources :flows

  resources :services

  devise_for :users


end
