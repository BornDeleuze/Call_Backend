class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :messages
end
