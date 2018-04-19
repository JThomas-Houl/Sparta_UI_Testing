require 'spec_helper'
require 'generate_data'


describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
    @wait = Selenium::WebDriver::Wait.new(timeout: 10)

    gen_faker_data = GenerateData.new.random_form_data_service
    @fake_first_name = gen_faker_data.faker_first_name
    @fake_last_name = gen_faker_data.faker_last_name
    @fake_phone_number = gen_faker_data.faker_phone_number
    @fake_username = gen_faker_data.faker_username
    @fake_password = gen_faker_data.faker_password
    @fake_email = gen_faker_data.faker_email
    @fake_about_me = gen_faker_data.faker_about_myself_vforvendeter_quote
    REGISTRATION_CONFIRMATION = 'piereg_message' #class
    
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      @driver.first_name_field_displayed
      @driver.set_first_name_field(@fake_first_name)
      expect(@driver.get_first_name_field_value).to eq @fake_first_name
    end

    it 'should accept a last name' do
        @driver.last_name_field_displayed
        @driver.set_last_name_field(@fake_last_name)
        expect(@driver.get_last_name_field_value).to eq @fake_last_name
      
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
        expect(@driver.select_marital_option('Single')).to eq true
        expect(@driver.select_marital_option('Married')).to eq true
        expect(@driver.select_marital_option('Divorced')).to eq true
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
        expect(@driver.select_hobby_option('Dance')).to eq true
        expect(@driver.select_hobby_option('Reading')).to eq true
        expect(@driver.select_hobby_option('Cricket')).to eq true
    end

    it 'should have a country default of Afghanistan' do
        expect(@driver.get_selected_country).to eq 'Afghanistan'
    end

    it 'accept a new DOB' do
        @driver.dob_month_list_select('1')
        @driver.dob_day_list_select('1')
        @driver.dob_year_list_select('2012')
        
    end

    it 'should accept a new country value' do
        @driver.country_dropdown_list_select('Japan')
    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field(@fake_phone_number)
      expect(@driver.get_phone_number_field_value).to eq @fake_phone_number
    end

    it 'should accept a username' do
        @driver.set_user_name_field(@fake_username)
        expect(@driver.get_user_name_field_value).to eq @fake_username
    end

    it 'should accept a email' do
        @driver.set_email_field(@fake_email)
        expect(@driver.get_email_field_value).to eq @fake_email
    end

    it 'should accept a about yourself text' do
        @driver.set_about_yourself_field(@fake_about_me)
        expect(@driver.get_about_yourself_value).to eq @fake_about_me
    end

    it 'should accept a password' do
        @driver.set_password_field(@fake_password)
        expect(@driver.get_password_value).to eq @fake_password
    end

    it 'should accept a password confirmation' do
        @driver.set_confirmation_password_field(@fake_password)

        expect(@driver.get_confirmation_password_value).to eq @fake_password
        expect(@driver.get_confirmation_password_value).to eq @driver.get_password_value
    end

    it 'should register successfully' do
        @driver.click_submit
        @wait
        expect(@driver.check_registration_successful).to eq "Thank you for your registration"
        sleep 30
    end

  end
end