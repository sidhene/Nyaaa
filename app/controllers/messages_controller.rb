class MessagesController < ApplicationController
  def index
  end

  def create
    @message = Message.new(sender_id: User.find(session["warden.user.user.key"][1][0]), receiver_id: params[reciver_id], body: '<img src="http://thecatapi.com/api/images/get?format=src&type=gif">')
    #need to find params for receiver id
    redirect_to welcome_path
  end

  def show
    @message = Message.find(params[:id])
  end
end
