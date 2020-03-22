Rails.application.routes.draw do
  root 'blogs#home'
  resources :articles
end
