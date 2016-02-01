Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'visitors#index'
  devise_for :users

  resources :pages
  resources :posts
  resources :comments
end
