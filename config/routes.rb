Psique::Engine.routes.draw do
  root to: 'documentation#index'
  get '/ui-elements/colors/guide', to:'documentation#guide_colors'
  get '/ui-elements/fonts', to:'documentation#font'
  get '/ui-elements/icon-font', to:'documentation#font_awesome'
  get '/ui-elements/blocks', to:'documentation#ui_blocks'
end
