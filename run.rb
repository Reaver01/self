require 'bundler/setup'
require 'date'
require 'discordrb'
require 'discordrb/data'
require 'dotenv'
require 'rubygems'
require 'rufus-scheduler'
require 'sys/uptime'
require 'time'
require 'time_difference'
include Sys
Dir['lib/bot/class/*.rb'].each { |file| require_relative file }
Dir['lib/bot/method/*.rb'].each { |file| require_relative file }
Dir['lib/bot/module/*.rb'].each { |file| require_relative file }
Dir['lib/bot/command/*.rb'].each { |file| require_relative file }
require_relative 'lib/bot'
