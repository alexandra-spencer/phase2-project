Rails.application.routes.draw do
  resources :restaurants
  resources :reviews
  resources :favorites
  resources :trails
  resources :hikers

  get "/login", to: "hikers#login", as: "login"
  post "/send_the_form_here", to: "hikers#handle_login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
