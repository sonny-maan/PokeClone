ENV['RACK_ENV'] = 'test'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require_relative '../app.rb'
Capybara.app = PokeBattle

