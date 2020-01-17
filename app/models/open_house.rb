class OpenHouse < ApplicationRecord
    belongs_to :apartment_listing
    # belongs_to :agent, through: :apartment_listing

    validates :date, presence: true
    validates :time, presence: true
    validates :details, presence: true

    def date_text
        self.date.strftime("%m/%d/%y")
    end

    def time_text
        self.time.strftime("%I:%M %p")
    end 

    def address
        self.apartment_listing.building.address + " - " + self.apartment_listing.apartment
    end 
end
