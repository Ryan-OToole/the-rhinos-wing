Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :create]
  resources :posts

  get '/users/:user_id/posts', to: 'users#user_posts'

  # This is login:
  resources :sessions, only: [:create]
  # post '/sessions/', to: 'sessions#create'
end
