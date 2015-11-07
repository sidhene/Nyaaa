class User < ActiveRecord::Base
  has_one :friendList
  has_many :messages
end
