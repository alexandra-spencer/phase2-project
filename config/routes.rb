Rails.application.routes.draw do
  resources :restaurants
  resources :reviews
  resources :favorites
  resources :trails
  resources :hikers

  get '/login', to: 'hikers#login', as: 'login'
  post "/login_form", to: "hikers#handle_login"
<<<<<<< HEAD
 
=======
>>>>>>> ced11a7d619d297de0b860014f62fc00cb4718d9

  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
