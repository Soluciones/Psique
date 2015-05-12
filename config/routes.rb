Psique::Engine.routes.draw do
  root to: 'documentation#index'
  get '/ui-elements/colours/verema', to:'documentation#verema_colors'
  get '/ui-elements/colours/rankia', to:'documentation#rankia_colors'
  get '/ui-elements/colours/guide', to:'documentation#guide_colors'
  get '/ui-elements/fonts', to:'documentation#font'
  get '/ui-elements/icon-font', to:'documentation#font_awesome'
  get '/ui-elements/ui-blocks', to:'documentation#ui_blocks'
end
