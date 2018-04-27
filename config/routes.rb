Rails.application.routes.draw do

  resources :movies

  resources :orders do
    resources :movies
  end

  resources :users

  root "movies#index"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/register' => 'users#new'
  post '/users' => 'users#create'

end
