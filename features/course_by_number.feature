Feature: search for courses by course number

    As a course recommendation system, user should be able to find a course information with the course number
    I want to include and search on course information in courses number I enter

Background: courses have been added to database

    Given database is seeded
    Then 50 courses should exist
    And 100 users should exist
