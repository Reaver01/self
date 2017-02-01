module Commands
  # Command Module
  module Eval
    extend Discordrb::Commands::CommandContainer
    command(
      :eval,
      help_available: false,
      permission_level: 999,
      permission_message: false
    ) do |event, *code|
      command_log('eval', event.user.name)
      begin
        event.message.edit(eval code.join(' '))
      rescue StandardError => e
        event.message.edit(e.to_s)
      end
    end
  end
end
