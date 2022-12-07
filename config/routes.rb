Rails.application.routes.draw do
  resources :reviews, only: [:show, :index, :update]
  resources :plants, only: [:show, :index, :create, :destroy]
  resources :users, only: [:show, :index, :create]
  get '/reviews/by_user/:id', to: 'reviews#user_reviews'
  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'
  get '/reviews/by_user/:id', to: 'reviews#user_reviews'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
