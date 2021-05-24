class MessagesController < ApplicationController

  def index
    @message = Message.new
  end

  def create
    @message = messages.new(message_params)
    if @message.save
      redirect_to root_path
    end
  end

  private

  def message_params
    params.require(:message).merge(user_id: current_user.id)
  end
end
