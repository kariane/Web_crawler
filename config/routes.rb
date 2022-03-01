Rails.application.routes.draw do
  root 'quotes#index'

  namespace :api do
    resources :users, param: :_username
    resources :authenticate, only: [:create]
    resources :quotes, only: [:index]

    post 'users', to: 'users#create'
    post '/auth/login', to: 'authentication#login'
    get 'quotes/:search_tag', to: 'quotes#index'
    get '/*a', to: 'application#not_found'
  end
end
