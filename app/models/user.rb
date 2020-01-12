class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :lost_pets
  has_many :found_pets
  has_many :sent_messages, class_name: "MessageBody", foreign_key: "sender_id"
  has_many :received_messages, class_name: "MessageBody", foreign_key: "receiver_id"
end
