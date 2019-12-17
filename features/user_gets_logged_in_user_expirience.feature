Feature: User gets logged in user experience
  As a logged in user
  In order to make full use of the service
  I would like to be directed to the service properly
  
  Background: 
    Given I am on the index page

  Scenario: User is logged in and navbar updates accordingly
    Then I should see "EXTREME INVOICING"
    And I should not see "Sign up"
    And I should not see "Log in"
    And I should see "Create invoice"
    And I should not see "Info about Invoicing Service"
    And I should see "Create new invoice"
    And I should see "Log out"