class Account < ApplicationRecord
    has_secure_password
    
    belongs_to :user, polymorphic: true
    
    has_many :notes

    has_many :notes_as_sender, class_name: "Note", foreign_key: "sender_id"
    has_many :receivers, through: :notes_as_sender, source: :receiver
    
    has_many :notes_as_receiver, class_name: "Note", foreign_key: "receiver_id"
    has_many :senders, through: :notes_as_receiver, source: :sender
   
    validates :email, presence: true 
    validates :email, uniqueness: true
    validates :email, uniqueness: {case_sensitive: false} 
    validates :password, presence: true

    # def all_notes
    #     self.notes_as_receiver + self.notes_as_sender
    # end

    # def participants
    #     receivers = self.all_notes.map do |m|
    #         m.receiver
    #     end 

    #     senders = self.all_notes.map do |m|
    #         m.sender
    #     end 

    #     otherParty = (receivers + senders).uniq

    #     return otherParty 
    # end

end
