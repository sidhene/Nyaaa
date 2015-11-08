require 'pry'

class WelcomeController < ApplicationController
  def index
  end

  def meow
    @messages = Message.where(receiver_id: current_user.id, read: false)
    @friend_list = []
    if FriendList.find_by(user_id: current_user.id)
      friend_list_id = FriendList.find_by(user_id: current_user.id).list
      friend_list_id.each do |id|
      @friend_list << User.find(id.to_i)
    end


    end
  end

end
