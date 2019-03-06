Rails.application.routes.draw do
  get 'login/login'
  get 'homes/home'
  get 'homes/about'
  resources :users
  root 'homes#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
