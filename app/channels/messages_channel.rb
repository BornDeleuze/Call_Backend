class MessagesChannel < ApplicationCable::Channel
  def subscribed
    @conversation = Conversation.find(params[:id].to_i)
    stream_for @conversation
  end

  # def received(data)
  #   ConversationChannel.broadcast_to(conversation, {conversation: conversation_id})
  #   end
  def unsubscribed
  end
end