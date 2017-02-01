module Commands
  # Command Module
  module Mho
    extend Discordrb::Commands::CommandContainer
    command(
      :mho,
      help_available: false,
      permission_level: 999,
      permission_message: false
    ) do |event|
      event.message.edit('https://github.com/mhonline/mhonline.github.io')
      command_log('mho', event.user.name)
      nil
    end
  end
end
