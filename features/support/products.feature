# encoding: utf-8

Feature: Show Recommend Product on the main page.
  The home page displays items recommended by the site administrator.
  Maximum number of goods 6. If the goods is not present, the blog is not showing.

  Scenario: Recommend to more than.
    Given User on home page.
    When Click on home link.
    Then User should see recommend items.
    And  Count recommend items equal.