Psique::Engine.routes.draw do
  root to: 'documentation#index'
  get '/design-elements', to:'documentation#design_elements'
  get '/ui-elements', to:'documentation#ui_elements'
end
