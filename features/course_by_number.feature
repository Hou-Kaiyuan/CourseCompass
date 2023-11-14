Feature: serarch for courses by course number

    As a course recommendation system, user should be able to find a course information with the course number
    I want to include and search on course information in courses number I enter

Background: courses have been added to database

    Given database is seeded
    Then 50 courses should exist
    And 100 users should exist

Scenario: searching "4152" returns 1 results
    Given I am on the CourseCompass home page
    When I fill in "search" with "4152"
    And I press "Search"

    And 1 courses should be display
    And I should see "COMS W 4152"


Scenario: searching "4152" returns 3 results
    Given I am on the CourseCompass home page
    When I fill in "search" with "CSEE"
    And I press "Search"

    And 3 courses should be display
    And I should see "CSEE W 4824-001"
    And I should see "CSEE W 3827-001"
    And I should see "CSEE W 3827-002"