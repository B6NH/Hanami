# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

root to: 'home#index'
resources :books, only: [:index, :new, :create]
resources :movies, only: [:index, :new, :create]
post '/movies', to: 'movies#create'
