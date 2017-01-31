# Run checks on message event
module Events
  extend Discordrb::EventContainer
  message do |event|
    if event.message.channel.pm?
    elsif BOT.parse_mention(event.message.content).id == 150_278_590_494_277_632
      if $settings.key?('afk')
        if $settings['afk']
          event.respond 'I am curretnly AFK. I will check my mentions when ' \
                        'I return.'
        end
      end
    end
  end
end
