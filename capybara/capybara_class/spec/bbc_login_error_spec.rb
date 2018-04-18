require 'spec_helper'

describe 'incorrect user details produces vaild error' do
    before(:all) do
        @bbc_site = Bbc_site.new
        @bbc_signin_page = @bbc_site.bbc_signin
        @bbc_homepage = @bbc_site.bbc_homepage
    end


    context 'it should respeond with the correct error when incorrect details are input' do

        it 'shoule produce an error when inputting an incorrect password to a invaild accont' do
            @bbc_site = Bbc_site.new
            @bbc_homepage.visit_homepage
            @bbc_homepage.click_sign_in_link
            @bbc_signin_page.enter_username('davidchest')
            @bbc_signin_page.enter_password('12345678abc')
            @bbc_signin_page.click_submit

            expect(@bbc_signin_page.check_error_message).to eq 'Sorry, we can’t find an account with that username. If you\'re over 13, try your email address instead or get help here.'
        end






    end
end
