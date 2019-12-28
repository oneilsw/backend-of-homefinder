class ListingReview < ApplicationRecord
    belongs_to :tenant
    belongs_to :apartment_listing
end
