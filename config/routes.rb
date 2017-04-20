Rails.application.routes.draw do
resources :users, only: [:index,:new, :create, :show]
resources :vacations, only: [:index, :new, :create, :show]
resources :sights, only: [:index, :new, :create, :show]
# resources :sessions

get '/login', to: 'sessions#new', as: "login"
post '/sessions', to: 'sessions#create', as: "sessions"
post '/logout', to: 'sessions#delete', as: 'logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
