Rails.application.routes.draw do

  root 'blogs#home'
  get 'about', to: 'blogs#about'

  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
