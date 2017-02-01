module Commands
  # Command Module
  module Help
    extend Discordrb::Commands::CommandContainer
    command(
      :help,
      help_available: false,
      permission_level: 999
    ) do |event|
      command_log('help', event.user.name)
      nil
    end
  end
end
