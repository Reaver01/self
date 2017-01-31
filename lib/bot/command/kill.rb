module Commands
  # Command Module
  module Kill
    extend Discordrb::Commands::CommandContainer
    command(
      :kill,
      help_available: false,
      permission_level: 999
    ) do |_event|
      File.open('botfiles/logs.json', 'w') { |f| f.write $logs.to_json }
      File.open('botfiles/settings.json', 'w') { |f| f.write $settings.to_json }
      BOT.stop
      exit
      nil
    end
  end
end
