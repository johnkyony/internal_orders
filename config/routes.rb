Rails.application.routes.draw do
  get 'pages/home'

  devise_for :users
  resources :users
  root to: 'visitors#index'
end
