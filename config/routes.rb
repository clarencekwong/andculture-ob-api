Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/breweries/by_city=:city', to: 'query#by_city'
      get '/breweries/by_brewery_type=:brewery_type', to: 'query#by_brewery_type'
      get '/breweries/by_state=:state', to: 'query#by_state'
      resources :breweries
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
