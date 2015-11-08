class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :friend_list
  has_many :messages

   def add_friend
    find_friend = User.find_by(user_name: params[:user_name]).id
    my_friend_list = self.friend_list.list
    if find_friend
      my_friend_list << find_friend
      self.friend_list.update_attribute(:friend_list, my_friend_list)
    end
  end
end
