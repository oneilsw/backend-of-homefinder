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
  resources :login
  resources :tenants

  get "/apartment_listings/:id/open_houses", to: "open_houses#listing_open_houses"

  get "/agents/:id/listings", to: "apartment_listings#agent_listings" 
end
