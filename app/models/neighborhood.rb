class Neighborhood < ApplicationRecord
    has_many :buildings
    has_many :listings, through: :buildings
end
