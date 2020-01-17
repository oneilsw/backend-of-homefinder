class PictureSerializer < ActiveModel::Serializer
  attributes :id, :url
  has_one :apartment_listing
end
