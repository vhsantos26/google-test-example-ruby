require 'capybara'
require 'capybara/cucumber'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'site_prism'

Capybara.configure do |config|
  config.app_host = 'https://www.google.com.br'
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 5
end
