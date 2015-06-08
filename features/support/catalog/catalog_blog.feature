Feature: Show blog catalog in the left sidebar.

  The left sidebar shows blog catalog.
    If the directory is not the blog skip.
    If no products in the catalog is a reference to the catalog is not showing.
    If there is no product in the catalog blog is not showing.

  Scenario: The left sidebar shows blog catalog.
    Given Create 5 catalogs
    And Create 5 product
    And Link product with catalog.
    When The user visit site.
    Then The user should see catalog blog.
    And In the catalog blog should be catalog link.

  Scenario: No catalog.
    Given Without catalogs
    When The user visit site.
    Then The user should not see catalog blog.

  Scenario: No products.
    Given Without product.
    And Create 5 catalogs
    When The user visit site.
    Then The user should not see catalog blog.