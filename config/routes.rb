Rails.application.routes.draw do
  get 'login/login'
  get 'homes/home'
  get 'homes/about'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/new'
  root 'homes#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
