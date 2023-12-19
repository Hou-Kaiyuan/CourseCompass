# features/course_enrollments.feature
#
#Feature: Course Enrollments
#
#  Scenario: User adds a new course enrollment
#    Given I am logged in
#    And I follow "Profile"
#    And I select option "Computers and Society" from element "course_enrollment_course_id"
#    And I fill in "course_enrollment[year]" with "2023"
#    And I select option "B-" from element "course_enrollment[grade]"
#    And I press "Add Course"
#    Then I should see "Course Enrollment Added"
#    And I should see "Course ID: COMS1234"
#    And I should see "Year: 2023"
#    And I should see "Grade: A"
#
#  Scenario: User edits an existing course enrollment
#    Given I am logged in
#    And I have an existing course enrollment with:
#      | Course       | COMS5678     |
#      | Year         | 2022         |
#      | Grade        | B+           |
#    When I go to my profile
#    And I follow "Edit"
#    And I fill in "Year" with "2023"
#    And I fill in "Grade" with "A-"
#    And I press "Update Course Enrollment"
#    Then I should see "Course enrollment was successfully updated."
#    And I should see "Course ID: COMS5678"
#    And I should see "Year: 2023"
#    And I should see "Grade: A-"
