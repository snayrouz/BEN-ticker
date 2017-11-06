Rails.application.routes.draw do
  root "home#index"

  get '/login', :to => 'sessions#new', :as => 'login'
  post '/login', :to => 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create, :edit, :update]

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
