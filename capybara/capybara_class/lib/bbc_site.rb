require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in'
require_relative 'pages/bbc_reg_under_13'

class Bbc_site

    def bbc_homepage
        BbcHomepage.new
    end
    
    def bbc_signin
        BbcSignin.new
    end
    
    def bbc_reg_under_13
        BbcRegUnder13.new
    end

end
