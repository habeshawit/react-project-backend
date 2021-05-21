Rails.application.routes.draw do

  # post '/login',    to: 'sessions#create'
  # post '/logout',   to: 'sessions#destroy'
  # get '/logged_in', to: 'sessions#is_logged_in?'

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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

