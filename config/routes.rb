Rails.application.routes.draw do
  root "home#index"

  get '/login', :to => 'sessions#new', :as => 'login'
  post '/login', :to => 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/password-reset', to: 'passwords#new', as: 'new_password_reset'
  post '/password-reset', to: 'passwords#create', as: 'password_reset'

  get '/password-confirmation', to: 'confirmations#new', as: 'new_password'
  post '/password-confirmation', to: 'passwords#update', as: 'edit_password'

  post '/tokens' => "tokens#create"

  resources :users, only: [:new, :create, :edit, :update]

  resources :currencies, only: [:show], id: "bitcoin"
  resources :bitcoin, only: [:index]
  resources :ethereum, only: [:index]

  namespace :charts do
    namespace :bitcoin do
      get "avg_btc_open_monthly"
      get "avg_btc_open_yearly"
      get "avg_btc_high_monthly"
      get "avg_btc_high_yearly"
      get "avg_btc_low_monthly"
      get "avg_btc_low_yearly"
      get "avg_btc_close_monthly"
      get "avg_btc_close_yearly"
    end
    namespace :ethereum do
      get "avg_eth_open_monthly"
      get "avg_eth_open_yearly"
      get "avg_eth_high_monthly"
      get "avg_eth_high_yearly"
      get "avg_eth_low_monthly"
      get "avg_eth_low_yearly"
      get "avg_eth_close_monthly"
      get "avg_eth_close_yearly"
    end
  end




end
