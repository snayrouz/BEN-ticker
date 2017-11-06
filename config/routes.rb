Rails.application.routes.draw do
  root "home#index"
  get '/oauth/authorize', as: 'coinbase_login'
  get '/auth/coinbase/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
