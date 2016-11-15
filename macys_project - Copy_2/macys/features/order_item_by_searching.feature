Feature:
  I like to shop
  I wish to buy a new items
  So that I can enjoy

Scenario: Ordering a new Item
Given I am on the Macys website
When I search for an item
And I get the list of items
And I select an item
And I Add the item to Bag
And I checkout the selected item
And I enter the custometr details
Then the item is purchased