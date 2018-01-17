Feature: Screenshot on fail
  So I can get more information to help me diagnose a failure
  I need to be able to capture a screenshot
  As a QA

  Scenario: Capture screen shot on failure
    Given I am viewing an item in quick-view
    When I select the item in blue
    Then I can see that the item's selected colour is blue