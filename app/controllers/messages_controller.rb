class MessagesController < ApplicationController
  def index
    @channel = Channel.find(params[:channel_id])
    @messages = @channel.messages.order_by(:created_at)
  end

  def create
    channel = Channel.find(params[:channel_id])
    message = Message.new(message_params.merge(channel: channel))

    if message.save
      redirect_to channel_messages_path(channel)
    else
      redirect_to channel_messages_path(channel)
    end
  end

  private

  def message_params
    params.require(:message).permit :text
  end
end
