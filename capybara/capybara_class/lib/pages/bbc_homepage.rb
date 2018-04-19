require 'capybara/dsl'

class BbcHomepage

    include Capybara::DSL

    HOMEPAGE_URL = 'https://www.bbc.co.uk'
    SIGN_IN_LIKE_ID = '#idcta-link'

    def visit_homepage
        visit(HOMEPAGE_URL)
    end

    def sign_in_link
        find(SIGN_IN_LIKE_ID)
    end

    def click_sign_in_link
        find(SIGN_IN_LIKE_ID).click
    end
    
end
