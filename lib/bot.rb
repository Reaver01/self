# Make botfiles directory if the directory doesn't already exist
Dir.mkdir('botfiles') unless File.exist?('botfiles')
# Load the environment variables
Dotenv.load
# Load all global variables
$logs = load_json('botfiles/logs.json')
$settings = load_json('botfiles/settings.json')
# Load all constant variables
SCHEDULER = Rufus::Scheduler.new
PREFIX = '.'.freeze
# Load the bot constant
BOT = Discordrb::Commands::CommandBot.new advanced_functionality: false,
                                          help_command: false,
                                          ignore_bots: false,
                                          log_mode: :quiet,
                                          parse_self: true,
                                          prefix: PREFIX,
                                          token: ENV['TOKEN'],
                                          type: :user
# Load all permissions from file
BOT.set_user_permission(150_278_590_494_277_632, 999)
puts "[#{Time.now.strftime('%d %a %y | %H:%M:%S')}][STARTUP] Permission Loaded!"
# Load all command modules
Commands.constants.each do |x|
  BOT.include! Commands.const_get x
end
# Load outside event module
BOT.include! Events
# Turn off discordrb debugging
BOT.debug = false
# Set run to async
BOT.run :async
puts "[#{Time.now.strftime('%d %a %y | %H:%M:%S')}][STARTUP] Self-Bot Online!"
# Sync the bot object
BOT.sync
