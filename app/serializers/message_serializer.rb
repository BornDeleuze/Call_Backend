class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :conversation_id, :content
end
