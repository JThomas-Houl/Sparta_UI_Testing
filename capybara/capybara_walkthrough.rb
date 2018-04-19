require 'capybara'

#register chrome driver with capybara
Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

session = Capybara::Session.new(:chrome)
#use the vist method to go to the page 
session.visit('http://toolsqa.com/automation-practice-form/')

#simple form entries
session.fill_in('firstname', with: 'test')
session.fill_in('lastname', with: 'test')
session.fill_in('datepicker', with: 'more tests')


#radio buttons id 
session.choose('sex-0')
session.choose('exp-3')

session.check('profession-0')
session.check('tool-0')
session.click_button('submit')

# session.click_link('Partial Link Test')
# session.click_link('Link Test')
# session.click_link('Selenium Automation Hybrid Framework')
# session.click_link('Test File to Download')

session.select('Browser Commands', :from => 'selenium_commands')
session.select('Europe', :from => 'continents')



sleep 5