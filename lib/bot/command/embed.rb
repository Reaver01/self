module Commands
  # Command Module
  module Embed
    extend Discordrb::Commands::CommandContainer
    command(
      :embed,
      help_available: false,
      permission_level: 999
    ) do |event, title, *content|
      content = content.join(' ')
      e = embed(title, content)
      event.message.edit('', e)
      command_log('embed', event.user.name)
      nil
    end
  end
end
