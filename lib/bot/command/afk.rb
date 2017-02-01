module Commands
  # Command Module
  module Afk
    extend Discordrb::Commands::CommandContainer
    command(
      :afk,
      help_available: false,
      permission_level: 999,
      permission_message: false
    ) do |event|
      if $settings.key?('afk')
        if $settings['afk']
          afk = false
          begin
            event.message.edit('Reaver is no longer AFK.')
          rescue
            mute_log(event.channel.id.to_s)
          end
        else
          afk = true
          begin
            event.message.edit('Reaver is AFK.')
          rescue
            mute_log(event.channel.id.to_s)
          end
        end
      else
        afk = true
        begin
          event.message.edit('Reaver is AFK.')
        rescue
          mute_log(event.channel.id.to_s)
        end
      end
      $settings['afk'] = afk
      File.open('botfiles/settings.json', 'w') { |f| f.write $settings.to_json }
      command_log('afk', event.user.name)
      nil
    end
  end
end
