class PlaygroundChannel < ApplicationCable::Channel
  def subscribed
    stream_from "playground_channel_#{params[:playground_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
