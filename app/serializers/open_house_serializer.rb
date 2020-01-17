class OpenHouseSerializer < ActiveModel::Serializer
  attributes :id, :address, :date, :time, :details, :apartment_listing, :date_text, :time_text
end
