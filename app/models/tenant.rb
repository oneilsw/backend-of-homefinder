class Tenant < ApplicationRecord
    include ActionView::Helpers::NumberHelper

    has_one :account, as: :user, dependent: :destroy

    has_many :viewings, dependent: :destroy
    has_many :viewed_listings, through: :viewings, source: :apartment_listings
    has_many :listing_agents, through: :viewed_listings, source: :agents

    has_many :listing_reviews, dependent: :destroy
    has_many :reviewed_listings, through: :listing_reviews, source: :apartment_listings

    has_many :agent_reviews, dependent: :destroy
    has_many :reviewed_agents, through: :agent_reviews, source: :agents

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :phone, presence: true

    def budget_text
        number_to_currency(self.budget)
    end  
    
    def full_name
        self.first_name.capitalize + " " + self.last_name.capitalize
    end 

    def move_date
        if (self.move_in_date)
            self.move_in_date.strftime("%m/%d/%y")
        end
    end 

end
