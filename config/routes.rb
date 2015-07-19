Rails.application.routes.draw do
  resources :beers
  root 'logged_out#index'

  resources :accounts, only: %i[new create edit update]
  resource :session, only: [:new, :create, :destroy]
  resources :password_resets, only: [:new, :create, :edit, :update]

  namespace :admin do
    get '/' => 'admin#index'
    resources :accounts
    resources :roles
    get '/metrics' => 'metrics#index'
  end
end
