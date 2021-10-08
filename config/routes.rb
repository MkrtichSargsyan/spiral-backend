Rails.application.routes.draw do
  resources :appointments
  resources :agents, only: %i[index show] do
    get '/houses', to: 'agents#show_agent_houses'
  end
  resources :houses, only: %i[index show]
  resource :users, only: [:create]
  post '/login', to: 'users#login'
  get '/auto_login', to: 'users#auto_login'
  post '/apply', to: 'users#apply'
end
