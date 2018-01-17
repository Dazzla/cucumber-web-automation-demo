Feature: Order History
  So I can keep my order information up-to-date
  As a registered customer
  I need to be able to view and edit order information as appropriate

  Scenario: Add message to previous order
    Given I am logged in
    When I am on the order history page
    Then I add a message to the latest order
    And I can see the comment displayed against the order
