@blog
Feature: Blog
  The user can read post in blog.
  An comment it

  Scenario:  Show posts list on blog page.
    Given Create 10 posts.
    When The user visit blog page.
    Then The user should see 10 post title link.

  Scenario: No post.
    Given Create 0 posts.
    When The user visit blog page.
    Then The user should see 0 post title link.

  Scenario: Visit post page.
    Given Create 10 posts.
    When The user visit blog page.
    And Click post link.
    Then Should see content post.

  Scenario: Create comment to post.
    Given The user on post page.
    When Create comment to post.
    And Click button "Отпрваить"
    Then Should see content comment.
