Rails.application.routes.draw do
  root to: 'pages#home'

  get '/hi(/:name)', to: 'pages#hi', as: 'hi'

  resources :posts

  resources :categories
end
