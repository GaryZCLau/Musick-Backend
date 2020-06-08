Rails.application.routes.draw do
  resources :activities
  resources :friends
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/users', to: 'users#create'
  post '/users/login', to: "users#login"
end
