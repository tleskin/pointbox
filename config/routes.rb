Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show], param: :username
  resources :rewards
  resources :admin, except: [:edit ]

  root to: 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/dashboard/', to: 'sessions#index'
end
