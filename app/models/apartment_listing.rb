class ApartmentListing < ApplicationRecord
    belongs_to :agent
    belongs_to :building

    has_many :viewings, dependent: :destroy
    has_many :tenants_who_viewed, through: :viewings, source: :tenants

    has_many :listing_reviews
    has_many :tenants_who_reviewed, through: :listing_reviews, source: :tenants

    has_many :open_houses, dependent: :destroy
end
