Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      post '/login',    to: 'sessions#create'
      post '/logout',   to: 'sessions#destroy'
      get '/logged_in', to: 'sessions#is_logged_in?'

      resources :items

      resources :categories do
        resources :items
      end
      
    end
  end
end

