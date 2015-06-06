Feature: Add image field to Product

  User should see image of product.

  Scenario:  User visit main page an watch thumb image product.
    Given User visit home page.
    When User visit products page.
    Then User should see thumb image of products.

  Scenario: User visit product page.
    Given User visit home page.
    When User visit product page.
    Then User should see image of product.