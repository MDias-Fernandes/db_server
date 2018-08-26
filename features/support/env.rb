require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'httparty'
require 'yaml'
require_relative 'spec_helper'

World(Pages)

Selenium::WebDriver::Chrome.driver_path = 'C:\BDD\chromedriver.exe'
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/resources/resources.yaml")

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
  config.default_max_wait_time = 20
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
        'args' => [ "--incognito", "--start-maximized" ]
      }
    )
  )
end