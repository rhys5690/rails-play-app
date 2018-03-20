Rails.application.routes.draw do

  namespace :auth do
    resources :users, only: [:create]
    resource :session, only: [:create]
    resource :confirmation, only: [:new]
  end

  namespace :admin do
    resources :posts

    root to: "posts#index"
  end

  post 'login' => 'auth/sessions#create'
  get 'login' => 'auth/sessions#new'
  delete 'logout' => 'auth/sessions#destroy'

  get 'register' => 'auth/users#new'
  resources :posts do
    resources :comments
  end

  root to: 'posts#index'
end
