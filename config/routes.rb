Rails.application.routes.draw do
  get 'pages/home'

  devise_for :users
  resources :users
  resources :departments
  resources :types 
  resources :orders
  root to: 'pages#home'
end
