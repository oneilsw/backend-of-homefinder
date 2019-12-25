class Building < ApplicationRecord
    has_many :listings, dependent: :destroy
    
    belongs_to :neighborhood
end
