Rails.application.routes.draw do
  root "home#index"

  get '/login', :to => 'sessions#new', :as => 'login'
  post '/login', :to => 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/password-reset', to: 'passwords#new', as: 'new_password_reset'
  post '/password-reset', to: 'passwords#create', as: 'password_reset'

  get '/password-confirmation', to: 'confirmations#new', as: 'new_password'
  post '/password-confirmation', to: 'passwords#update', as: 'edit_password'

  resources :users, only: [:new, :create, :edit, :update]

  resources :currencies, only: :show, id: "bitcoin"

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
