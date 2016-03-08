Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'visitors#index'
  devise_for :users
  get 'tags/:tag', to: 'visitors#index', as: :tag

  resources :posts
  resources :comments
  resources :categories
  resources :messages
end
