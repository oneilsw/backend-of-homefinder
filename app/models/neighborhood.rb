class Neighborhood < ApplicationRecord
    has_many :buildings
    has_many :apartment_listings, through: :buildings
end
