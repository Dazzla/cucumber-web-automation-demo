Feature: Order History


  Scenario: Add message to previous order
    Given I am logged in
    When I am on the order history page
    Then I add a message to the latest order
    And I can see the comment displayed against the order
