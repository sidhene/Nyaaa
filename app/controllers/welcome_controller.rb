require 'pry'

class WelcomeController < ApplicationController
  def index
  end

  def meow
    @messages = Message.where(receiver_id: 1)
    @test = 'test'
  end
end
