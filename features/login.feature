Feature: Login

  The website will support user login functionality.
  If the user is not logged in, the webpage will redirect the user to the login page, on all pages except log in page.
  Only Columbia accounts will be permitted to log in.

Background: course evaluations have been added to database

    Given database is seeded
    Then 10 courses should exist
    And 4 users should exist


Scenario: User will be redirected to login page from all pages if not logged in
    Given User not logged in

    Given I go to CourseCompass home page
    Then I should be on the Login page
    And I should see "Please log in with columbia.edu email"

    Given I go to the Profile page
    Then I should be on the Login page
    And I should see "Please log in with columbia.edu email"

    Given I go to the Recommendation page
    Then I should be on the Login page
    And I should see "Please log in with columbia.edu email"


