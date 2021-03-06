class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_channel"
  end

  def speak (data)
    ActionCable.server.broadcast('chat_channel', data['message'])
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
