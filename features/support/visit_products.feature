Feature: Showing VisitProduct blog.

  The left sidebar displays a list of goods viewed by the user.
  Items on the list of no more than 12.
  If you did not visit the blog page catalog is not visible.

  Scenario: User visit Product page.
    Given User visit home page.
    When Count visit Product page 15.
    Then Visit blog must have content "Вы просматривали:".
    And Count product in visit blog equal 12.