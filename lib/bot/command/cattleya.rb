module Commands
  # Command Module
  module Catt
    extend Discordrb::Commands::CommandContainer
    command(
      :catt,
      help_available: false,
      permission_level: 999
    ) do |event|
      event.message.edit('https://github.com/Reaver01/Cattleya')
      command_log('cattleya', event.user.name)
      nil
    end
  end
end
