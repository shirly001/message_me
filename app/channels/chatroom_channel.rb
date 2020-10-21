class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    #subscribe to channel
    stream_from "chatroom_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
