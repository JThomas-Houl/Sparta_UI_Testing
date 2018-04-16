require 'selenium-webdriver'

class SeleniumQaToolsForm
    PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form/'
    FIRST_NAME_FIELD_NAME = 'firstname'
    LAST_NAME_FIELD_NAME = 'lastname'

    def initialize
        @chrome_driver = Selenium::WebDriver.for :chrome
    end 

end 

