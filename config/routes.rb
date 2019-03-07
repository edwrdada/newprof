Rails.application.routes.draw do
  
  get 'sessions/new'
  get 'homes/home', to: 'homes#home'
  get 'homes/about', to: 'homes#about'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  root 'homes#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
