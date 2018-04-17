require 'spec_helper'

describe 'testing the demo qa registration page' do

    before(:all) do
        @driver = SeleniumDemoReg.new
        @driver.access_registration_form
    end

    context 'positive paths for the registration form and register' do

        it 'should land on the registration page' do
            expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
        end

        it 'should accept a first name' do
            @driver.first_name_field_displayed
            @driver.set_first_name_field('jon')
            expect(@driver.get_first_name_field_value).to eq 'jon'
        end


    end 



end
