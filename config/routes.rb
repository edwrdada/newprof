Rails.application.routes.draw do
  get 'login/login', to: 'login#login'
  get 'homes/home', to: 'homes#home'
  get 'homes/about', to: 'homes#about'
  resources :users
  root 'homes#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
