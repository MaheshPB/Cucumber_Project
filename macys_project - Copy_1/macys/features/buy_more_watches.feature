Feature:
  I like to have more watches
  I wish to buy a new watches
  So that I can be enjoy the time

  Scenario: Ordering a new watch
    Given I wish to buy a watch
    Then I am on macys website
    Then I click on Men's Watches link on the featured categories link
    Then I click on the watch image
    Then I select the size
    Then I click on Add To Bag
    Then I click on the Checkout link
    Then click on the Keep Shopping link
    Then I click on the Checkout button
    Then I enter the user details
    And I submkit the transaction
