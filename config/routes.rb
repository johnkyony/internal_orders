Rails.application.routes.draw do
  get 'pages/home'
  get 'page/type'
  get 'pages/department'
  

  devise_for :users
  resources :users
  resources :departments
  resources :types 
  resources :orders
  root to: 'pages#home'
end
