class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :username, :conversation_id, :content
end
