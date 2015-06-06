Feature: Add image field to Product

  User should see image of product.

  Scenario:  User visit product page an watch image product.
    Given User visit home page.
    When User visit product page.
    Then User should see image of product.