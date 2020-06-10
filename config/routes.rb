Rails.application.routes.draw do
  get '/users/stay_logged_in', to: 'users#stay_logged_in'
  post '/users', to: 'users#create'
  post '/users/login', to: "users#login"
  delete '/activities/:id', to: 'activities#destroy'
  resources :activities
  resources :friends
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
