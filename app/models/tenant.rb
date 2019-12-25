class Tenant < ApplicationRecord
    has_one :account, as: :user, dependent: :destroy

    has_many :viewings, dependent: :destroy
    has_many :viewed_listings, through: :viewings, source: :listings
    has_many :listing_agents, through: :viewed_listings, source: :agents

    has_many :listing_reviews, dependent: :destroy
    has_many :reviewed_listings, through: :listing_reviews, source: :listings

    has_many :agent_reviews, dependent: :destroy
    has_many :reviewed_agents, through: :agent_reviews, source: :agents
end
