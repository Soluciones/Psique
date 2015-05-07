Psique::Engine.routes.draw do
  root to: 'documentation#index'
  get '/colours/verema', to:'documentation#verema_colors'
  get '/colours/rankia', to:'documentation#rankia_colors'
  get '/colours/guide', to:'documentation#guide_colors'
end
