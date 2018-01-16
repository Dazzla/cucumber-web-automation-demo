Feature: Check out and purchase items
  So that I can purchase items from the site
  As a customer
  I need to be able to complete the check-out process

  #TODO: This test is too long and should be refactored into more atomic tests
  # There are too many steps and the assertions are not clean and separated
  # Presented this way for clarity
  Scenario: I purchase two items
    Given I am viewing an item in quick-view
    When I change the size of an item
    And I add the item to my basket
    And I am viewing another item in quick-view
    And I add the item to my basket
    Then the items are visible in the basket
    And the total price is correct
#    And I can complete payment
