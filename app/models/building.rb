class Building < ApplicationRecord
    has_many :apartment_listings, dependent: :destroy
    
    belongs_to :neighborhood
end
