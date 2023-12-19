Feature: Create Course

  As a logged-in user
  I want to be able to create a new course
  So that I can add courses to the system

  Background:
    Given database is seeded
    And I am on the CourseCompass home page

  Scenario: User creates a new course successfully
    Given I am logged in
    When I follow "Add New Course"
    And I fill in "Course Number" with "COMS4512"
    And I fill in "Course Title" with "SaaS"
    And I fill in "Offering Term" with "Fall 2023"
    And I fill in "Instructor" with "Jane Doe"
    And I check "Midterm Exam"
    And I check "Project"
    And I fill in "Days" with "MW"
    And I fill in "Time" with "8:40 AM - 9:55 AM"
    And I press "Create Course"
    Then I should be on the CourseCompass home page
    And I should see "SaaS was successfully created."

  Scenario: User fails to create a new course
    Given I am logged in
    When I follow "Add New Course"
    And I press "Create Course"
    Then I should see "Course number is required."
    And I should see "Course title is required."
    And I should see "Instructor name is required."
