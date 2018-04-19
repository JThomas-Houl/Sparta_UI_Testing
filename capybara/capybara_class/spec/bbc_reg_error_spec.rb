require 'spec_helper'

describe 'incorrect user details produces vaild error' do

    before(:each) do
        @bbc_site = Bbc_site.new
        @bbc_signin_page = @bbc_site.bbc_signin
        @bbc_homepage = @bbc_site.bbc_homepage
        @bbc_reg_under_13 = @bbc_site.bbc_reg_under_13
        @thank_you_parent_message_url = 'https://account.bbc.com/register/thanks/guardian?action=register&context=childrens&nonce='

    end

    context 'is should respond with an email sent to a parent / gaudiean' do

        it 'should make the journey to the reg page for under 13 and send and email' do
            @bbc_reg_under_13.path_to_under_13_page
            @bbc_reg_under_13.fill_in_parent_email(@bbc_reg_under_13.faker_random_email_gen)
            @bbc_reg_under_13.click_send_email_parent
            expect(@bbc_reg_under_13.current_url).to include(@thank_you_parent_message_url)
        end 
    end

end