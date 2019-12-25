class Account < ApplicationRecord
    has_secure_password
    
    belongs_to :user, polymorphic: true  
   
    validates :email, presence: true 
    validates :email, uniqueness: true
    validates :email, uniqueness: {case_sensitive: false} 
    validates :password, presence: true
    validates :password_confirmation, presence: true
end
