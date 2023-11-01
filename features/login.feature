Feature: Login

  The website will support user login functionality.
  If the user is not logged in, the webpage will redirect the user to the login page, on all pages except log in page.
  Only Columbia accounts will be permitted to log in.

 Background:
      Given the following users exist:
  | uid | first_name | last_name | email               | major | provider      | oauth_token | profile_pic
  | 1   | Test       | User1     | test1@columbia.edu  | CS    | google_oauth2 | 0           | "https://static.vecteezy.com/system/resources/previews/002/318/271/non_2x/user-profile-icon-free-vector.jpg"

  Scenario: Successful login
    When I go to the login page
    And I fill in "Email" with "user@columbia.com"
    And I fill in "Password" with "password"
    And I press "Log in"
    Then I should be on the CourseCompass home page
    And I should see "Welcome, user@columbia.com"

  Scenario: Unsuccessful login
    When I go to the login page
    And I fill in "Email" with "user@columbia.com"
    And I fill in "Password" with "wrongpassword"
    And I press "Log in"
    Then I should be on the login page
    And I should see "Invalid email or password"

  Scenario: Register a new account
    When I go to the login page
    And I fill in "Email" with "newuser@columbia.com"
    And I fill in "Password" with "newpassword"
    And I press "Register"
    Then I should be on the CourseCompass home page
    And I should see "Welcome, newuser@columbia.com"