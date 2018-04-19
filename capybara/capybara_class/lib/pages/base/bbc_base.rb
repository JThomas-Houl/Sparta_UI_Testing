require 'capybara/dsl'


class BbcBase

    include Capybara::DSL
    
    HOMEPAGE_URL = 'https://www.bbc.co.uk'
    SIGN_IN_LIKE_ID = '#idcta-link'
    REG_LINK = 'Register now'
    UNDER_13_LINK = 'Under 13'
    OVER_13_LINK = '13 or over'

    def path_to_sign_in_page
        visit(HOMEPAGE_URL)
        find(SIGN_IN_LIKE_ID).click
    end

    def path_to_under_13_page
        visit(HOMEPAGE_URL)
        find(SIGN_IN_LIKE_ID).click
        click_link(REG_LINK)
        click_link(UNDER_13_LINK)
    end
    
    def path_to_over_13_page
        visit(HOMEPAGE_URL)
        find(SIGN_IN_LIKE_ID).click
        click_link(REG_LINK)
        click_link(OVER_13_LINK)
    end
        
    
end
