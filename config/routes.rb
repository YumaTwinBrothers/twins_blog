Rails.application.routes.draw do
  root 'blogs#home'
  get 'about', to: 'blogs#about'
  resources :articles
end
