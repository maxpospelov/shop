Feature: Show Product.
  User want to watch product info.

  Scenario:Watch a product page
    Given User on home page and want watch product page
    When Click on product link
    Then I should see title Product name
    And I should see Product name
    And I should see Product full description
    And I should see Product price
    And I should see Button 'В козину'

  Scenario: The user wants to see a product that is not in the database.
    Given The user enters a web browser request for a product which is not.
    When  The user sends a request.
    Then  The user is redirected to a 404 page.
