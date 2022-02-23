Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :seasons do
        resources :episodes
      end
      resources :users do
        resources :libraries
      end 
      resources :movies
      get '/movies_seasons', to: "seasons#movies_seasons"
    end
  end
end
