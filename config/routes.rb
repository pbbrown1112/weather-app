Rails.application.routes.draw do
  
      resources :users
      resources :cities

      post '/login', to: 'users#authenticate'

      post '/signup', to: 'users#create'

      post '/users/:id', to: 'users#create_city'

      # resources :user_cities
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
