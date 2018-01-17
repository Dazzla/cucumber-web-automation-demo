Feature: Order History


  Scenario: Add message to previous order
    Given I am logged in
    When I am on the order history page
    Then I add a message to the latest order
    And I can see the comment displayed against the order

  Scenario: Capture screen shot on failure
    Given I am viewing an item in quick-view
    When I select the item in blue
    Then I can see that the item's selected colour is blue