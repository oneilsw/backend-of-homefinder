class AgentSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :phone, :image, :bio, :brokerage, :rating_average, :account, :apartment_listings

end
