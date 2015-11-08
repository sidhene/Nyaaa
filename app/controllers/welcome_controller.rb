require 'pry'

class WelcomeController < ApplicationController
  def index
  end

  def meow
    @messages = Message.where(receiver_id: 1)
    friend_list_id = FriendList.find_by(user_id: 1).list
    @friend_list = []
    friend_list_id.each do |id|
      @friend_list << User.find(id.to_i)
    end
  end

end
