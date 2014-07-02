Rails.application.routes.draw do
  root :to => 'session#new'
  resources :users
  resources :works
  resources :pages

  get '/explore' => 'pages#explore'
  post '/explore' => 'pages#explore'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/welcome' => 'pages#explore'
  delete '/login' => 'session#destroy'

  post '/works/:id/like' => 'works#like', :as => 'like_work'


end
