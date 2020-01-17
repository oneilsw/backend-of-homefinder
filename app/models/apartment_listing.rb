class ApartmentListing < ApplicationRecord
    include ActionView::Helpers::NumberHelper

    belongs_to :agent
    belongs_to :building

    has_many :viewings, dependent: :destroy
    has_many :tenants_who_viewed, through: :viewings, source: :tenants

    has_many :listing_reviews
    has_many :tenants_who_reviewed, through: :listing_reviews, source: :tenants

    has_many :open_houses, dependent: :destroy

    has_many :pictures

    validates :apartment, presence: true
    validates :broker_fee, presence: true
    validates :rent, presence: true
    validates :availability_date, presence: true
    validates :bedroom_count, presence: true
    validates :bathroom_count, presence: true 

    def rent_text
        number_to_currency(self.rent) + "/month"
    end

    def broker_fee_text
        number_to_currency(self.broker_fee)
    end

    def move_in_date
        self.availability_date.strftime("%m/%d/%y")
    end

    def neighborhood
        self.building.neighborhood
    end 

    def agent_name
        self.agent.full_name
    end
end
