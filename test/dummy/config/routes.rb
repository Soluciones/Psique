Rails.application.routes.draw do
  root to: 'test#index'
  mount Psique::Engine => '/styleguide'
end
