class AccountSerializer < ActiveModel::Serializer
  attributes :id, :email, :user_type, :user_id, :user
 
end
