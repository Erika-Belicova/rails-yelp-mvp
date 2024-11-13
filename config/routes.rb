Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "posts#index"

  get 'restaurants', to: 'restaurants#index', as: :restaurant_index
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant_path

  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
end
