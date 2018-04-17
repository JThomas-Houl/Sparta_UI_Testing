require 'faker'
require 'selenium-webdriver'

class RandomFormData
    
    def initialize
    # set up driver
    @chrome_driver = Selenium::WebDriver.for :chrome
    end

    def access_registration_form
    @chrome_driver.get(PAGE_URL)
    end

    def faker_first_name
        Faker::Name.first_name 
    end

    def faker_last_name
        Faker::Name.last_name 
    end

    def faker_email
        Faker::Internet.email
    end

    def faker_username
         Faker::Internet.user_name
    end
    
    def faker_phone_number
        num = Faker::Number.number(10)
        '0' + num
    end
    
    def faker_about_myself_vforvendeter_quote
        Faker::VForVendetta.quote
    end
    
    def faker_password
        Faker::Internet.password(8)
    end

end

test_it = RandomFormData.new
test_it.faker_password
