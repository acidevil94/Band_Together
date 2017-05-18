Feature: Generic User signs in on the application
	As a generic user
	I can sign in in the application providing my personal email and password
	because I want to access to my personal account

	Scenario: Sign in via the application

		Given I am on the Home Page
		When I follow "Sign In"
		Then I should be on the Sign In Page
		When I fill in "Email" with "mariorossi@gmail.com"
		And I fill in "Password" with "123456"
		Then I should be on the User Home Page

	Scenario: Sign in via Google
		Given I am on the Home Page
		When I follow "Sign In"
		Then I should be on the Sign In Page
		When I follow "Sign in with Google"
		And Google authorizes me
		Then I should be on the User Home Page

	Scenario: Sign in via Facebook
		Given I am on the Home Page
		When I follow "Sign In"
		Then I should be on the Sign In Page
		When I follow "Sign in with Facebook"
		And Facebook authorizes me
		Then I should be on the User Home Page
