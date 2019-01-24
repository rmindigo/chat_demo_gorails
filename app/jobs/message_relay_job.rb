class MessageRelayJob < ApplicationJob
  queue_as :default

  def perform(message)
  	 ActionCable.server.broadcast "chatrooms:#{message.chatroom.id}", {
      username: MessagesController.render(message),
      chatroom_id: message.chatroom.id
    }
    # Do something later
  end
end
