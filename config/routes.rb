Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index', as: 'restaurants'
  get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
  patch 'restaurants/:id', to: 'restaurants#update'
  delete 'restaurants/:id', to: 'restaurants#destroy', as: 'delete_restaurant'

  get 'restaurants/:id/reviews/new', to: 'reviews#new', as: 'new_review'
  post 'restaurants/:id/reviews', to: 'reviews#create', as: 'reviews'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# A visitor can see the list of all restaurants.
# GET "restaurants"

# She/He can add a new restaurant, and be redirected to the show view of that new restaurant.
# GET "restaurants/new"
# POST "restaurants"

# She/He can see the details of a restaurant, with all the reviews related to the restaurant.
# GET "restaurants/38"

# She/He can add a new review to a restaurant
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
