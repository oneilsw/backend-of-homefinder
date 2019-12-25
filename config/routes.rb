Rails.application.routes.draw do
  resources :open_houses
  resources :agent_reviews
  resources :listing_reviews
  resources :viewings
  resources :apartment_listings
  resources :buildings
  resources :neighborhoods
  resources :accounts
  resources :agents
  resources :tenants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
