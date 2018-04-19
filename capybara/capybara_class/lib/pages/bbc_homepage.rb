require 'capybara/dsl'
require_relative './base/bbc_base'

class BbcHomepage < BbcBase

    include Capybara::DSL

    def sign_in_link
        find(SIGN_IN_LIKE_ID)
    end

    
    
end
