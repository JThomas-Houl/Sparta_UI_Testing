require 'capybara'
require_relative '../lib/bbc_site'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end 

#register chrome driver with capybara
Capybara.register_driver :chrome do |app|
Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
  
Capybara.configure do |config|
  config.ignore_hidden_elements = false
  config.default_max_wait_time = 10
  config.match = :prefer_exact
  config.default_driver = :chrome
end