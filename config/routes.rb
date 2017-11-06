Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  get '/auth/twitter', to: 'sessions#create', as: 'twitter_login'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')

  get '/login', :to => 'sessions#new', :as => 'login'
  post '/login', :to => 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
