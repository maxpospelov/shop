Feature: Brand Blog

  The left sidebar displays the list of brands. Blog on the blog be visited products.
  If the goods are not, the blog is not showing.
  If brands do not have the blog is not showing.

  Scenario:  Have brand and product.
    Given Admin create 6 brands.
    When The user visit site.
    Then The user should see the blog with brands.

  Scenario: No brand.
    Given Admin create 0 brands.
    When The user visit site.
    Then The user should not see the blog with brands.

  Scenario: No product.
    Given No product.
    When The user visit site.
    Then The user should not see the blog with brands.

  Scenario: No product and No brand
    Given Admin create 0 brands.
    And  No product.
    When The user visit site.
    Then The user should not see the blog with brands.


  Scenario: Click on brand link.
    Given Admin create 6 brands
    And Create 36 product
    And Link them with the goods.
    When User visit home page.
    And Click on brand link.
    Then Should see product list with brand.

  Scenario: Click on brand link without products.
    Given Admin create 6 brands
    And Create 0 product
    When User visit home page.
    And Click on brand link.
    Then Should not see product list with brand.