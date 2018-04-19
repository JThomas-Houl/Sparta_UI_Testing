require 'capybara/dsl'
require_relative './bbc_homepage'
require_relative './base/bbc_base'

class BbcRegUnder13 < BbcBase
    include Capybara::DSL

    PARENT_EMAIL = 'email-input'
    PARENT_SENT_EMAIL_ID = 'submit-button'
    EMAIL_SENT_TO_PARENT = 'Email sent. Now check your inbox and follow the instructions'
    EMAIL_SENT_PAGE_URL = 'https://account.bbc.com/register/thanks/guardian?action=register&context=childrens&nonce=oMeBi3k0-tZNSqRIMwRw7Qmzlc23ElDwr83c&ptrt=http%3A%2F%2Fwww.bbc.co.uk%2Fnews%2Fblogs-trending-43794067&userOrigin=news'
    EMAIL_SENT_CLASS = 'text heading'

    def fill_in_parent_email(parent_email)
        fill_in(PARENT_EMAIL, with: parent_email)
    end

    def click_send_email_parent
        click_button(PARENT_SENT_EMAIL_ID)
    end

    def email_sent_message
        find(:class, EMAIL_SENT_CLASS).text
    end



end
