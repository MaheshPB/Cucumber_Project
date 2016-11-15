
Feature:
  I like to shop with discounts
  I wish to buy a new items
  So that I can be enjoy the time

  Scenario: Ordering an item with the pop-up sale offer
    Given I am on the Macys home page
    When I select an item category
    And I select an item
    And I select the item color and size
    And I add the item to bag
    And I checkout the item
    And I enter the customer details
    Then I should see the item is purchased