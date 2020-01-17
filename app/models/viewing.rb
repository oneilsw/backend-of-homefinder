class Viewing < ApplicationRecord
    belongs_to :tenant
    belongs_to :apartment_listing
 
    validates :date, presence: true
    validates :time, presence: true
    validates :note, presence: true

    def agent
        self.apartment_listing.agent
    end 

    def date_text
        self.date.strftime("%m/%d/%y")
    end

    def time_text
        self.time.strftime("%I:%M %p")
    end

    def address
        self.apartment_listing.building.address + " - " + self.apartment_listing.apartment
    end 

    def agent_name
        self.apartment_listing.agent.full_name
    end 

    def tenant_name
        self.tenant.full_name
    end

end
