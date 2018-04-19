require 'spec_helper'

describe 'incorrect user details produces vaild error' do
    before(:all) do
        @bbc_site = Bbc_site.new
        @bbc_signin_page = @bbc_site.bbc_signin
        @bbc_homepage = @bbc_site.bbc_homepage
        @bbc_reg_under_13 = @bbc_site.bbc_reg_under_13
    end

    context 'it should respeond with the correct error when incorrect details are input' do

        it 'should produce an error when inputting an incorrect password to a invaild accont' do
            @bbc_homepage.path_to_sign_in_page
            @bbc_signin_page.enter_username(@bbc_signin_page.faker_random_username_gen)
            @bbc_signin_page.enter_password(@bbc_signin_page.faker_random_password_gen)
            @bbc_signin_page.click_submit

            expect(@bbc_signin_page.check_error_message).to eq 'Sorry, we can’t find an account with that username. If you\'re over 13, try your email address instead or get help here.'
        end
    end

    # context 'it should respond with the correct error when no detail are entered' do

    #     it 'should produce three errors when no username or password is entered' do
    #         @bbc_homepage.path_to_sign_in_page
    #         @bbc_signin_page.click_submit
            
    #         expect(@bbc_signin_page.check_genral_error_message).to eq 'Sorry, those details don\'t match. Check you\'ve typed them correctly.'
    #         expect(@bbc_signin_page.check_error_message).to eq 'Something\'s missing. Please check and try again.'
    #         expect(@bbc_signin_page.check_passowrd_error_message).to eq 'Something\'s missing. Please check and try again.'

    #         expect(@bbc_signin_page.check_username.empty?).to be true
    #         expect(@bbc_signin_page.check_password.empty?).to be true
    #     end
    # end

    # context 'it should respond with the correct errors when the password and username is too short' do
        
    #     it 'should produce two errors when the username and password are too short' do 
    #         @bbc_homepage.path_to_sign_in_page
    #         @bbc_signin_page.enter_username('d')
    #         @bbc_signin_page.enter_password('1')
    #         @bbc_signin_page.click_submit

    #         expect(@bbc_signin_page.check_error_message).to eq 'Sorry, that username\'s too short. It needs to be at least two characters.'
    #         expect(@bbc_signin_page.check_passowrd_error_message).to eq 'Sorry, that password is too short. It needs to be eight characters or more.'
    #         @bbc_signin_page.click_submit
    #         expect(@bbc_signin_page.check_genral_error_message).to eq 'Sorry, those details don\'t match. Check you\'ve typed them correctly.'
            
    #     end 
    # end
end
