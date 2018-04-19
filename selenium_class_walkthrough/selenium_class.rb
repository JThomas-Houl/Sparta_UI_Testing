require 'selenium-webdriver'

class SeleniumQaToolsForm
    PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form/'
    FIRST_NAME_FIELD_NAME = 'firstname'
    LAST_NAME_FIELD_NAME = 'lastname'
    GENDER = ['sex-0','sex-1']
    YEARS_OF_EXPERIENCE = ['exp-0','exp-1','exp-2','exp-3','exp-4','exp-5','exp-6']
    PROFESSION = ['profession-0','profession-1']
    AUTOMATION_TOOL = ['tool-0','tool-1','tool-2']
    LINK = 'Test File to Download'

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

    def select_link_by_title
        @chrome_driver.find_element(:link_text, LINK).click
        sleep 5
    end

    def get_first_name_text
        puts @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)['value']
    end
    
    def get_input_continent_field # done with help still need to full understand
        dropdown_list = @chrome_driver.find_element(:id,  'continents')
        options = dropdown_list.find_elements(:tag_name, 'option')
        options.each { |option| option.click if option.text == 'Europe' }
        sleep 4
    end 

    def get_selenium_commands_field # done with help still need to full understand
        commands_list = @chrome_driver.find_element(:id, 'selenium_commands')
        options = commands_list.find_elements(:tag_name => 'option')
        # options.each { |option| option.click if option.text == 'Wait Commands Commands' }
        options[3].click
        sleep 4
    end 
end 




form = SeleniumQaToolsForm.new
# form.get_selenium_commands_field
# form.select_link_by_title

form.visit_practice_form # YOU NEED THIS TO VIEW THE PAGE!!!!!!!
# form.input_firstname_field('jeff')
# form.input_lastname_field('doe')
form.input_date_field('17-04-2018')
# form.button_selector_using_button_id('sex-1')
# form.button_selector_using_button_id('exp-0')
# form.button_selector_using_button_id('profession-0')
# form.button_selector_using_button_id('tool-0')