# Faker_random_gen_data_tests

## Clone the Repo

```bash
git clone https://github.com/JThomas-Houl/Faker_random_gen_data_tests.git
```

## How to use
Instantiate the Superclass and run the `random_form_data_service` in your code `@generate = GenerateData.new.random_form_data_service`. Once you have instantiated the super class you can now access all the methods in the generator.

```ruby
@generate = Generate.new.`random_form_data_service`
@first_name = @generate.faker_first_name
@second_name = @generate.faker_last_name
@phone_number = @generate.faker_phone_number
@user_name = @generate.faker_username
@email = @generate.faker_email
@descritpion = @generate.faker_about_myself_vforvendeter_quote
@password = @generate.faker_password
```

## Test

To run the rspec tests simply run `rspec` command from the root of the project in terminal:-

```bash
rspec

------------running tests-----------------

testing the random form data service
  should return a string for first name
  should return a string for last name
  should return a phone number that starts with 0 and 11 digits long
  should return a string for username
  should return a email string containing an @ 
  should return a string for about my self
  should return a string for password

Finished in 2.37 seconds (files took 2.73 seconds to load)
7 examples, 0 failures
``` 
