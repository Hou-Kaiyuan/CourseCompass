Feature: add a data point for user 1 and course A

  As a user of CourseCompass, I should be able to add my data point to the database.

  Background: courses have been added to database
    Given database is seeded
    Then 50 courses should exist
    And 100 users should exist

  Scenario: course A exists in the database, and user 1 has not rated course A 

  Scenario: course A exists in the database, and user 1 has rated course A 

  Scenario: course A does not exist in the database