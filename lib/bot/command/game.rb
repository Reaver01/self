module Commands
  # Command Module
  module Game
    extend Discordrb::Commands::CommandContainer
    command(
      :game,
      help_available: false,
      permission_level: 999
    ) do |event, *text|
      $settings['game'] = text.join(' ')
      BOT.game = $settings['game']
      File.open('botfiles/settings.json', 'w') { |f| f.write $settings.to_json }
      command_log('game', event.user.name)
      nil
    end
  end
end
