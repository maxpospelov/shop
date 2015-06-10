Feature: New order form

  The user click on link cart. System create new form for order.
  @form_order
  Scenario: Click link cart.
    Given Create 5 product
    And Create line item.
    When Click link "корзине".
    Then The user should see element "h2" with text "Адрес получателя".
    And The user should see new order form.

  @click_button_order
  Scenario: Click button оформить
    Given  Create line item.
    When Click link "корзине".
    And Insert name "Name".
    And Insert email "example@mail.ru".
    And Insert address "Address".
    And Insert phone "1234567".
    And Click button "Оформить"
    Then In table order should be has record with "Name", "example@mail.ru", "Address", "1234567"
