class MessagesController < ApplicationController

  def index
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_path
    end
  end

  private

  def message_params
    params.permit(:memo).merge(user_id: current_user.id)
  end
end
