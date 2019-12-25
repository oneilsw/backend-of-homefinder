class AgentReview < ApplicationRecord
    belongs_to :agent
    belongs_to :tenant
end
