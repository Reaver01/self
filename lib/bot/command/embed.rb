module Commands
  # Command Module
  module Embed
    extend Discordrb::Commands::CommandContainer
    command(
      :embed,
      help_available: false,
      permission_level: 999,
      permission_message: false
    ) do |event, *embed_contents|
      embed_contents = embed_contents.join(' ')
      embed_array = embed_contents.split(',')
      e = embed(embed_array[0], embed_array[1])
      event.message.edit('', e)
      command_log('embed', event.user.name)
      nil
    end
  end
end
