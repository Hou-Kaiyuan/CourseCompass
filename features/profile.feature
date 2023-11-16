Feature: User Profile

  Background:
    Given database is seeded

  Scenario: User logs in and views their profile
    Given a valid user
    When I go to the login page
    And I fill in "Email" with "test@columbia.edu"
    And I fill in "Password" with "1234"
    And I press "Log In"
    Then I should see "Successfully Logged In!"
    When I follow "Profile"
    Then I should see "No course history available."
    And I should see "Email: test@columbia.edu"