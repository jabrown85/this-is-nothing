require 'sinatra'

require File.dirname(__FILE__) + '/spec_helper'
require File.dirname(__FILE__) + '/../app'
disable :run

require 'selenium/webdriver'

# options = Selenium::WebDriver::Chrome::Options.new
# chrome_bin = ENV.fetch('GOOGLE_CHROME_SHIM', nil)
# options.binary = chrome_bin if chrome_bin
# options.add_argument('--no-sandbox')
# options.add_argument('--disable-dev-shm-usage')
# options.add_argument('--headless')
# options.add_argument('--disable-gpu')
# options.add_argument('--window-size=1875,1275')
# options.add_argument('--disable-extensions')
# options.add_argument('--remote-debugin-port=9222')

#options.add_argument('headless')
#options.add_argument('no-sandbox')
#options.add_argument('disable-dev-shm-usage')
#options.add_argument('window-size=1400,1400')

#driver = Selenium::WebDriver.for :chrome, options: options
#driver.navigate.to "http://google.com"


require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'

Capybara.app = App

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