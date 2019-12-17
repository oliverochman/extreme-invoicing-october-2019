Feature: User can create invoice

  Background:
    Given the following user exist
      | email         | password |
      | user@user.com | password |

    And I am logged in as "user@user.com"
    And I am on the landing page

  Scenario: User can create an invoice
    When I click on "Create new invoice"
    Then I should see "New invoice created”