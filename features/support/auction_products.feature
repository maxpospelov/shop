# encoding: utf-8
Feature: Show Auction Product on Main Page

  The home page is displayed Discount goods.
  Discount goods is not more than 3. In the absence of discount goods, the blog is not showing.


  Scenario:  Count Discount goods is more then 3
    Given Count discount goods is 5.
    When User on home page watch discount blog.
    Then User should see discount goods.
    And  Showing discount goods count is  equal 3.

  Scenario: No discount goods.
    Given Count discount goods is 0.
    When User on home page watch discount blog.
    Then Discount goods is not present.

  Scenario: Count discount goods between 0 and 3.
    Given Count discount goods is 2.
    When User on home page watch discount blog.
    Then Count item in blog 2.