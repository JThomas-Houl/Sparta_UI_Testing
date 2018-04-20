# Sparta_UI_Testing


## Introduction 

This repo contains test for the BBC website. These will test the sign in page as well as the registration for under 13’s. The information will be laid out in Gherkin format, giving you the examples via Given, And, When, Then.

## Tests

1)	it 'should produce an error when inputting an incorrect password to a invaild accont'
- Given: The user is on the homepage 
- And: Clicks on the sign in link
- When: The user enters an incorrect password for an invalid account
- Then: They should receive the correct error message “If you're over 13, try your email address instead or get help here”

2)	it 'should produce three errors when no username or password is entered'
- Given: The user is on the homepage 
- And: Clicks on the sign in link
- When: The user enters no information in the user name or password
- Then: They should receive the correct error message “Something’s missing. Please check and try again.”

3) it 'should produce two errors when the username and password are too short'	
- Given: The user is on the homepage 
- And: Clicks on the sign in link
- When: The user enters a username and password which are 2 characters long
- Then: They should receive the correct error message 
> 'Sorry, that username's too short. It needs to be at least two characters.'
> 'Sorry, that password is too short. It needs to be eight characters or more.'
> 'Sorry, those details don't match. Check you've typed them correctly.'

4) it 'should make the journey to the reg page for under 13 and send and email'
- Given: The user is on the registration page 
- And: Clicks under 13 link
- When: The user enters a valid email following this example “jeff@gmail.com”
- Then: Clicks send email, they should be taken to the thank you, email has been sent

