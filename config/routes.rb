Rails.application.routes.draw do

  resources :orders do
    resources :movies
  end
  resources :users

  root "order/movies#index"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/register' => 'users#new'
  post '/users' => 'users#create'

end
