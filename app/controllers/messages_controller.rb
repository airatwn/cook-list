class MessagesController < ApplicationController
  def index
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    redirect_to root_path if @message.save
  end

  def new
    @message = Message.new
  end

  private

  def message_params
    params.require(:message).permit(:memo).merge(user_id: current_user.id)
  end
end
