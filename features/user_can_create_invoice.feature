Feature: User can create invoice
  As a registered user
  In order to send an invoice to my customer
  I would like to be able to create an invoice

  Background:
    Given the following user exist
      | email         | password |
      | user@user.com | password |

  Scenario: Logged in user can create an invoice
    Given I am logged in as "user@user.com"
    And I am on the index page
    And I click on "Create invoice"
    And I click on "Create new invoice"
    Then I should see "Invoice number:"

  Scenario: Visitor can not create an invoice
    Given I am on the index page
    When I click on "Create invoice"
    Then I should see "You need to sign in or sign up before continuing."