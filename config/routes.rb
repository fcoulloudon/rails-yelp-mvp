Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get "restaurants", to: "restaurants#index"

    # New restaurant
    get "restaurants/new", to: "restaurants#new"
  
    # Read (one)
    get "restaurants/:id", to: "restaurants#show", as: :restaurant
  
    # Create restaurant
    post "restaurants", to: "restaurants#create"

    # Delete restaurant
    delete "restaurants/:id", to: "restaurants#destroy"

    resources :restaurants do
      resources :reviews, only: [ :new, :show, :create ]
    end
end
