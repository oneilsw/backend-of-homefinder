Rails.application.routes.draw do
  resources :notes
  resources :messages
  resources :pictures
  resources :articles
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
  resources :pictures

  get "/apartment_listings/:id/open_houses", to: "open_houses#listing_open_houses"
  get "/agents/:id/listings", to: "apartment_listings#agent_listings" 
  get "/apartment_listings/:id/viewings", to: "viewings#listing_viewings"
  get "/tenants/:id/viewings", to: "viewings#tenant_viewings"
  get "/agents/:id/showings", to: "viewings#agent_showings"
  get "/agents/:id/open_houses", to: "open_houses#agent_open_houses"
  get "/agents/:id/pending_showings", to: "viewings#pending_showings"

  # get "/accounts/:id/notes", to: "notes#account_notes" 
  # get "/accounts/:id/convo_participants", to: "accounts#convo_participants"

end
