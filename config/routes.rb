Psique::Engine.routes.draw do
  root to: 'documentation#index'
  get '/elements', to:'documentation#elements'
end