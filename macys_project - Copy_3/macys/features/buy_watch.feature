Feature:
  I like to wear watch
  I wish to buy a new watch
  So that I can be punctual

  Scenario: Ordering a new watch
    Given I wish to buy a watch
    Then I am on macys website
    Then I click on Men's Watches link on the featured categories link
    Then I click on the watch image
    Then I select the size
    Then I click on Add To Bag
    Then I click on the Checkout link
    Then I click on the Checkout button
    Then I enter the user details
    And I submkit the transaction