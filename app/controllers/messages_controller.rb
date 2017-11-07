class MessagesController < ApplicationController
  def index
    @messages = Message.all
    render json: { messages: @messages }, status: :ok
  end

  def show
    @message = Message.find(params[:id])
    render json: { message: @message }, status: :ok
  end
end
