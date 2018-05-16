Rails.application.routes.draw do
  get 'home', to: 'home#show'

  resources :users
  resources :posts
end
