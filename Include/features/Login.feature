#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
      
Feature: Login functionality
  As a user
  I want to be able to log into Bareksa
  
  Background:
  	Given I am on the login page
	
	@TC
  Scenario Outline: Login with valid credentials
    When I enter a valid <username> and a valid <password>
    And I click the login button
    Then I should be logged in successfully

		Examples:
			| username 							      | password 							 |
			| delaapriliawibawa@gmail.com | h11YXGUk288jkAkj3GF4QA==|
			
  Scenario Outline: Login with valid username and invalid password
    When I enter a valid <username> and an invalid <password>
    And I click the login button
    Then I should see an error message

		Examples:
			| username 										| password |
			| delaapriliawibawa@gmail.com | 12343 	 |
			
  Scenario Outline: Login with invalid username and valid password
    When I enter an invalid <username> and a valid <password>
    And I click the login button
    Then I should see an error message

		Examples:
			| username 										| password 								 |
			| delaapriliawibawa@gmail.co  | h11YXGUk288jkAkj3GF4QA== |
    
  Scenario Outline: Login with valid username and invalid password
    When I enter an invalid <username> and an invalid <password>
    And I click the login button
    Then I should see an error message

		Examples:
			| username 										| password |
			| delaapriliawibawa@gmail.co  | 12343 	 |

  Scenario: Login with blank email and password
    When I leave the <username> blank 
    And I leave the <password> blank
    And I click the login button
    Then I should see an error message

  Scenario: Forgot password functionality
    When I click on the Lupa Password link
    Then I should be redirected to the password recovery page

  Scenario: Create account functionality
    When I click on the Buat Akun link
    Then I should be redirected to the account registration page