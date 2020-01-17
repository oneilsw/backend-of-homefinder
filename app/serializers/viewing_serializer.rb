class ViewingSerializer < ActiveModel::Serializer
  attributes :id, :address, :date_text, :time_text, :note, :confirmed, :agent, :agent_name, :tenant, :tenant_name, :apartment_listing
end
