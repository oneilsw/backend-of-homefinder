class Note < ApplicationRecord
    belongs_to :sender, class_name: "Account", foreign_key: "sender_id"
    belongs_to :receiver, class_name: "Account", foreign_key: "receiver_id"

    validates :text, presence: true
    validates :receiver_id, presence: true
end
