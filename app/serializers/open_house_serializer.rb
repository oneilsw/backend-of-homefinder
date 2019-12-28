class OpenHouseSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :details, :apartment_listing, :date_text, :time_text
end
