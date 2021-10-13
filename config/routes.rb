Rails.application.routes.draw do
  root to: 'somecontroller#someaction'

  resources :appointments
  resources :agents, only: %i[index show] do
    get '/houses', to: 'agents#show_agent_houses'
  end
  resources :houses, only: %i[index show]
  resource :users, only: [:create]
  post '/login', to: 'users#login'
  get '/auto_login', to: 'users#auto_login'
  get '/show_appointments', to: 'users#show_appointments'
  post '/apply', to: 'users#apply'
  delete '/remove_appointment', to: 'users#remove_appointment'
end
