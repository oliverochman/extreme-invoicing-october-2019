Feature: User can store its company data
  As a logged in user
  In order to avoid repetitive input
  I would like to store data about my company

  Background: 
    Given the following company exist
      | name   | user                   |
      | Google | google_exec@google.com |
    
  Scenario: Visitor can save his company information
    Given I am logged in as "user@user.com"  
    And I am on the index page
    When I click on "Company Profile"
    And I fill in "Name" with "Craft Academy"
    And I click on "Update profile"
    Then I should be on the Invoices page
    And I should see "Company information added."


  Scenario: Company Name must be filled in
    Given I am logged in as "user@user.com"  
    And I am on the index page
    When I click on "Company Profile"
    And I fill in "Name" with ""
    And I click on "Update profile"
    Then I should see "Something went wrong. Company Name is required."

  Scenario: User can view saved company information
    Given I am logged in as "google_exec@google.com"  
    And I am on the index page
    When I click on "Company Profile"
    And I should see "Google"