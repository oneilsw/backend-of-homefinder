class TenantSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :move_date, :phone, :budget, :budget_text, :viewings, :account 
end
