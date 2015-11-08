class MessagesController < ApplicationController
  def index
  end

  def create
    @message = Message.new(sender_id: User.find(session["warden.user.user.key"][1][0]), receiver_id: 1, body: 'http://thecatapi.com/api/images/get?format=src&type=gif')
    #need to find params for receiver id
    @message.save
    redirect_to welcome_meow_path

  end

  def show
    @message = Message.find(params[:id])
    @rand = rand().to_s
    render :layout => false
  end


end
