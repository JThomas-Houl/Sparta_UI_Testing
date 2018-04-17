require 'selenium-webdriver'
require_relative '../selenium_demoqa_reg'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end 