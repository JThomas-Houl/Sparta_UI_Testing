require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in'

class Bbc_site

    def bbc_homepage
        BbcHomepage.new
    end
    
    def bbc_signin
        BbcSignin.new
    end
    

end
