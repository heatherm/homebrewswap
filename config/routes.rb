Rails.application.routes.draw do
  root 'logged_out#index'

  resources :accounts, only: %i[new create edit update]
  get 'take_action' => "logged_out#take_action"

  resource :session, only: [:new, :create, :destroy]
  resources :password_resets, only: [:new, :create, :edit, :update]

  get 'my_account' => 'logged_in#landing'

  namespace :admin do
    get '/' => 'admin#index'
    resources :accounts
    resources :roles
    get '/metrics' => 'metrics#index'
  end
end
