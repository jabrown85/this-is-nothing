require 'sinatra'

require File.dirname(__FILE__) + '/spec_helper'
require File.dirname(__FILE__) + '/../app'
disable :run

require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'

Capybara.app = Sinatra::Application

chrome_bin = ENV.fetch('GOOGLE_CHROME_SHIM', nil)

chrome_opts = chrome_bin ? { "chromeOptions" => { "binary" => chrome_bin } } : {}

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(
     app,
     browser: :chrome,
     desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(chrome_opts)
  )
end

RSpec.configure do |config|
  config.include Capybara
end