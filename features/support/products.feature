# encoding: utf-8
Feature: Show Recommend Product on the main page.

  The home page displays items recommended by the site administrator.
  Maximum number of goods 6. If the goods is not present, the blog is not showing.

  Scenario: Recommend Product more than six.
    Given User on home page.
    When Click on home link.
    Then User should see recommend 6 items.
    And  Count recommend items equal six.

  Scenario: No product.
    Given No product.
    When Click on home link.
    Then The user should not see the blog.

  Scenario: Products more 0 and less 3.
    Given Product count 3 with recommend = true.
    When Click on home link.
    Then The user should see only 3 products.
