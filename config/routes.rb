Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  resources :rewards


  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
