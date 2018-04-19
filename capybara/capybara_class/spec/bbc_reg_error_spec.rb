require 'spec_helper'

describe 'incorrect user details produces vaild error' do
    before(:all) do
        @bbc_site = Bbc_site.new
        @bbc_signin_page = @bbc_site.bbc_signin
        @bbc_homepage = @bbc_site.bbc_homepage
        @bbc_reg_under_13 = @bbc_site.bbc_reg_under_13
    end

    context 'is should respond with an email sent to a parent / gaudiean' do

        it 'should make the journey to the reg page for under 13 and send and email' do
            # @bbc_homepage.visit_homepage
            # @bbc_homepage.click_sign_in_link
            # @bbc_reg_under_13.click_reg_link
            # @bbc_reg_under_13.click_under_13_link
            # @bbc_reg_under_13.click_send_email_parent
            # @bbc_reg_under_13.test_set_up
            @bbc_reg_under_13.path_to_under_13_page


            # Something's missing. Please check and try again. NO INPUT
            # Sorry, that doesn't look right. Please check it's a proper email. NEEDS TO HAVE @SENDER.COM TO PASS

        end 


    end
end