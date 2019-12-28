class BuildingSerializer < ActiveModel::Serializer
  attributes :id, :address, :year_built, :elevator, :super, :laundry, :neighborhood, :apartment_listings
end
