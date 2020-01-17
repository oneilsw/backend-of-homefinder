class AgentSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :phone, :image, :bio, :brokerage, :rating_average, :account, :apartment_listings, :showings, :pending_showings
  has_many :open_houses, through: :apartment_listings
  

end
