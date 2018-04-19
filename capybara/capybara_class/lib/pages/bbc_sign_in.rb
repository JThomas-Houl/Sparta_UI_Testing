require 'capybara/dsl'

class BbcSignin

    include Capybara::DSL

    USERNAME = 'user-identifier-input'
    PASSWORD ="password-input"
    SUBMIT_BUTTON = 'submit-button'
    ERROR = 'form-message__text'
    GERNERAL_ERROR_MESSAGE = 'form-message-general'
    USERNAME_ERROR = 'form-message-username'
    PASSWORD_ERROR = 'form-message-password'

    def enter_username(username)
        fill_in(USERNAME, with: username)
    end

    def check_username
        find(:id, USERNAME).text
    end 
    
    def enter_password(password)
        fill_in(PASSWORD, with: password)
    end

    def check_password
        find(:id, PASSWORD).text
    end 

    def click_submit
        click_button(SUBMIT_BUTTON)
    end 

    def check_error_message
        find(:id, USERNAME_ERROR).text
    end

    def check_genral_error_message
        find(:id, GERNERAL_ERROR_MESSAGE).text
    end

    def check_passowrd_error_message
        find(:id, PASSWORD_ERROR).text
    end

end