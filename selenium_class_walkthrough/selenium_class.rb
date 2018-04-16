require 'selenium-webdriver'

class SeleniumQaToolsForm
    PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form/'
    FIRST_NAME_FIELD_NAME = 'firstname'
    LAST_NAME_FIELD_NAME = 'lastname'
    GENDER = ['sex-0','sex-1']
    YEARS_OF_EXPERIENCE = ['exp-0','exp-1','exp-2','exp-3','exp-4','exp-5','exp-6']
    PROFESSION = ['profession-0','profession-1']
    AUTOMATION_TOOL = ['tool-0','tool-1','tool-2']

    def initialize
        @chrome_driver = Selenium::WebDriver.for :chrome
    end 

    def visit_practice_form
        @chrome_driver.get(PRACTICE_FORM_URL)
    end

    def input_firstname_field(text)
        @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
        sleep 5
    end

    def input_lastname_field(text)
        @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
        sleep 5
    end

    def input_date_field(text)
        @chrome_driver.find_element(:id, "datepicker").send_keys(text)
        sleep 5
    end

    def button_selector_using_button_id(button_id)
        @chrome_driver.find_element(:id, button_id).click
        sleep 5
    end

    def select_link_by_title(link_title)
        @chrome_driver.find_element(:title, link_title).click
        sleep 5
    end

    def get_first_name_text
        puts @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)['value']
    end

end 

form = SeleniumQaToolsForm.new
form.visit_practice_form
# form.input_firstname_field('jeff')
# form.input_lastname_field('thomas')
# form.input_date_field('yyyyyy')
# form.input_date_field('yyyyyy')
# form.button_selector_using_button_id('tool-0')
form.select_link_by_title('Automation Practice Form')