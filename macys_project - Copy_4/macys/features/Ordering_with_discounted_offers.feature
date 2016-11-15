Feature:
  I like to shop
  I wish to buy a new items
  So that I can enjoy

  Scenario: Ordering a new item with discounted offers
    Given I am on the Macys home page
    When I select the Shop now option
    And I select the desired item
    And I select the item color and size
    And I add the item to bag
#    And I checkout the item
    And I enter the customer details
    Then I should see the item is purchased