Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  get '/auth/twitter', to: 'sessions#create', as: 'twitter_login'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')

  get '/login', :to => 'sessions#new', :as => 'login'
  post '/login', :to => 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  namespace :api do
    namespace :v1 do
      namespace :bitcoin do
        get "/month_controller", to: "month_controller#show"
        get "/week_controller", to: "week_controller#show"
      end
      namespace :etherium do
        get "/month_controller", to: "month_controller#show"
        get "/week_controller", to: "week_controller#show"
      end
    end
  end



end
