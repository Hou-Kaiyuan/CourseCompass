Feature: display list of courses for recommendation

  As a user of CourseCompass, I should be able to get a list of courses Recommendations


Background: course evaluations have been added to database

    Given database is seeded
    Then 50 courses should exist
    And 100 users should exist



