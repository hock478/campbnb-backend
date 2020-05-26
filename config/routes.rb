Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :properties
  resources :reservations
  resources :reviews
  
  post '/login', to: 'auth#create'
  # get '/reviews/:id', to: 'reviews#property_reviews'
end
