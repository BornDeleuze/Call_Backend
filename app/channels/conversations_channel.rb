class ConversationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "conversations_channel"
    puts "subscribed"
  end

  def unsubscribed
    puts"unsubscribed"
  end
end