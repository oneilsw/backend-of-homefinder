class OpenHouse < ApplicationRecord
    belongs_to :listing
    belongs_to :agent, through: :listing
end
