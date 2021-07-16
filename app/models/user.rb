class User < ApplicationRecord
    has_many :messages
    has_many :conversations, through: :user_conversations
end
