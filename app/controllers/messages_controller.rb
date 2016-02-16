class MessagesController < ApplicationController
  before_action :set_message, only: [:destroy]

  def index
    @messages = Message.paginate(page: params[:page], per_page: 10).order('created_at DESC')
  end

  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        format.html { redirect_to :root, notice: 'Message was successfully created.' }
      else
        format.html { render :root, notice: 'Something goes wrong.' }
      end
    end
  end

  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_path, notice: 'message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:name, :text, :email)
  end
end
