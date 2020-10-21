class ChatroomController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new
    #@messages = Message.All
    #calling custom_display method on Message model
    #refer models/message.rb for this method
    @messages = Message.custom_display
  end

end
