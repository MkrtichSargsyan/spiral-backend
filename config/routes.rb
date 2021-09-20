Rails.application.routes.draw do
  resources :appointments
  resources :agents, only: %i[index show]
  resources :houses
  resource :users, only: [:create]
  post '/login', to: 'users#login'
  get '/auto_login', to: 'users#auto_login'
end
