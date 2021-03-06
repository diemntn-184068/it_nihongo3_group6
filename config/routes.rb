Rails.application.routes.draw do
  resources :restaurant_food_reviews
  resources :restaurant_foods
  resources :restaurant_comments
  get 'users/show'
  root 'static_pages#home'
  get 'static_pages/home'
  devise_for :users
  resources :restaurants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
