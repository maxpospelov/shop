@product_to_cart
Feature:  Add product to cart.

  The user can add products to cart. Click on button in product list.

  Scenario: Success
    Given Create 10 product
    And Create line item.
    And User visit product page.
    When Click on product button.
    Then Should add record in LineItem table.
    And  Should be link 'корзине'