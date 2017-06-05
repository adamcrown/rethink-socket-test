class ChannelsController < ApplicationController
  def index
    @channels = Channel.all.order_by(:created_at)
  end

  def create
    channel = Channel.new(channel_params)

    if channel.save
      redirect_to channel_messages_path(channel)
    else
      redirect_to channels_path
    end
  end

  private

  def channel_params
    params.require(:channel).permit :name
  end
end
