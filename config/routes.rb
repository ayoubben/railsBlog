Rails.application.routes.draw do
  resources :pages
  root to: 'visitors#index'
  devise_for :users
end
