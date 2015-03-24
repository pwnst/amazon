Feature: Search items on Amazon and add them to cart
  As a user I should be able search and add items to cart
  
  Scenario: Search iPhone 6 on Amazom
    Given Im on Amazon home page
    When type iPhone 6 in search field
    And select Go button
    And select 1st product in search results
    Then products color is Gold or Space Gray or Gray or Silver
    
  Scenario: Add just found iPhone 6 to cart
    When select Add to Cart button
    And go to cart page
    Then cart list in not empty
    And Checkout button is available
    And product name in cart list contains Apple iPhone 6
