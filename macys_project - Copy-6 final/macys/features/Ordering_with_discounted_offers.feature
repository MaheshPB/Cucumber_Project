Feature:
  I like to shop
  I wish to buy a new items
  So that I can enjoy

  Scenario: Ordering a new item with discounted offers
    Given I am a valid user
#    When I select the Shop now option
    When I select the Men's category
    And I select the desired item
    And I add the item to the bag
    And I checkout the item
    And I enter the customer details
    Then I should see the item is purchased