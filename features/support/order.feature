@billing
Feature: The user insert goods to the cart.
  @add_product_to_cart
  Scenario: Add product to the cart.
    Given Create 10 product
    And User visit product page.
    When Click order button.
    Then Should add record in LineItem table.

  @click_cart_link
  Scenario: Look product in the cart.
    Given Create 10 product
    And User visit product page.
    When Click order button.
    And User visit home page.
    And Click link "корзине".
    Then The user should see element "h1" with text "В корзине".
    And  The user should see image thump product.
    And  The user should see link product.
    And  The user should see price product.
    And  The user should see count product in LineItems.
    And  The user should see button delete.
    And  The uer  should see total price in the cart.

  @click_link_delete_in_cart
  Scenario: Click link delete item in cart.
    Given The user on the cart page.
    When Click delete item link.
    Then Item should remove from cart.
