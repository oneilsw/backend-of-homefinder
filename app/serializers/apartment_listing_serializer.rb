class ApartmentListingSerializer < ActiveModel::Serializer
  attributes :id, :apartment, :rent, :rent_text, :summary, :image, :lease_length, :broker_fee, :broker_fee_text, :bedroom_count, :bathroom_count, :move_in_date, :building, :neighborhood, :agent, :agent_name, :open_houses 
end

