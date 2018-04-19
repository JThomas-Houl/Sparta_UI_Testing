require 'capybara/dsl'

class BbcSignin

    include Capybara::DSL

    USERNAME = 'user-identifier-input'
    PASSWORD ="password-input"
    SUBMIT_BUTTON = 'submit-button'
    ERROR = 'form-message__text'

    def enter_username(username)
        fill_in(USERNAME, with: username)
    end
    
    def enter_password(password)
        fill_in(PASSWORD, with: password)
    end

    def click_submit
        click_button(SUBMIT_BUTTON)
    end 

    def check_error_message
        find(:id, 'form-message-username').text
    end

end