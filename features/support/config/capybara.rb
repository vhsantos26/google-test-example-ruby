Capybara.configure do |config|
  config.app_host = ENV['APPLICATION_BASE_URL']
  config.ignore_hidden_elements = false
  config.default_max_wait_time = 10
  config.default_driver = BROWSER = (ENV['DRIVER'] || 'chrome').to_sym
end

Capybara.register_driver :firefox do |app|
  options = Selenium::WebDriver::Firefox::Options.new
  options.profile = 'default'
  Capybara::Selenium::Driver.new(
    app,
    browser: :firefox,
    options: options
  )
end

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('start-maximized')
  options.add_argument('disable-infobars')
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options
  )
end
