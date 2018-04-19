require 'spec_helper'

describe 'random data checking' do

    before(:all) do
        @form_data_service = GenerateData.new.random_form_data_service
    end
        
    context 'random gen' do
        

        it 'should return a string for first name' do
            expect(@form_data_service.faker_first_name).to be_a(String)
        end

        it 'should return a string for last name' do
            expect(@form_data_service.faker_last_name).to be_a(String)
        end

        it 'should return a email string containing an @' do
            expect(@form_data_service.faker_email).to be_a(String) and include('@')
        end

        it 'should return a string for username' do
            expect(@form_data_service.faker_username).to be_a(String)
        end
        
        it 'should return a phone number that starts with 0 and 11 digits long' do
            expect(@form_data_service.faker_phone_number).to be_a(String)
            expect(@form_data_service.faker_phone_number[0]).to eq '0'
            expect(@form_data_service.faker_phone_number.length).to eq 11
        end

        it 'should return a string for password' do
            expect(@form_data_service.faker_password).to be_a(String) 
        end

        it 'should return a string for about my self' do
            expect(@form_data_service.faker_about_myself_vforvendeter_quote).to be_a(String)
        end

    end

end
