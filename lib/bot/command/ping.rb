module Commands
  # Command Module
  module Ping
    extend Discordrb::Commands::CommandContainer
    command(
      :ping,
      help_available: false,
      permission_level: 999,
      permission_message: false
    ) do |event|
      event.message.edit(
        "Pong! : #{((Time.now - event.timestamp) * 1000).to_i}ms"
      )
      command_log('ping', event.user.name)
      nil
    end
  end
end
