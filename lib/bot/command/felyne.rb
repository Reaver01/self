module Commands
  # Command Module
  module Felyne
    extend Discordrb::Commands::CommandContainer
    command(
      :felyne,
      help_available: false,
      permission_level: 999
    ) do |event|
      event.message.edit('https://github.com/mhonline/Felyne-bot')
      command_log('felyne', event.user.name)
      nil
    end
  end
end
