Rails.application.routes.draw do

  get 'home', to: 'home#show'
  root :to => redirect('/home')

  resources :users
  resources :posts
end
