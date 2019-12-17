Feature: User can create invoice
  As a registered user
  In order to send an invoice to my customer
  I would like to be able to create an invoice

  Background:
    Given the following user exist
      | email         | password |
      | user@user.com | password |

    And I am logged in as "user@user.com"
    And I am on the index page
    And I click on "Create invoice"

  Scenario: User can create an invoice
    Then I should be on the invoices page
    When I click on "Create new invoice"
    Then I should see "Invoice number:"