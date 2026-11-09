Rails.application.routes.draw do
    # Read all
    get "restaurants", to: "restaurants#index" # <-- displays all restaurants
    # Create
    get "restaurants/new", to: "restaurants#new", as: :new_restaurant
    post "restaurants", to: "restaurants#create"
    # Read one
    get "restaurants/:id", to: "restaurants#show", as: :restaurant # <-- displays restaurants by id
    # Update
    get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
    patch "restaurants/:id", to: "restaurants#update"
    # Delete
    delete "restaurants/:id", to: "restaurants#destroy"

  #  resources :restaurants # <-- can have all that routes above
  # resources :restaurants, only: <-- if you need all of the route you can specify
  # resources :restaurants, except: <--- vice-versa
end
