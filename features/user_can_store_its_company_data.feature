Feature: User can store its company data
  As a logged in user
  In order to avoid repetitive input
  I would like to store data about my company

  Background: 
    Given the following user exist
      | email         | password |
      | user@user.com | password |

    And I am logged in as "user@user.com"  
    And I am on the index page
    
  Scenario: 
    When I click on "Profile"
    Then I should be on the profile page
    And I should see "Company name"
    And I fill in "Company name" with "Bob"
    And I click on "Update profile"