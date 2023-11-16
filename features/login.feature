Feature: Login

  The website will support user login functionality.
  If the user is not logged in, the webpage will redirect the user to the login page, on all pages except log in page.
  Only Columbia accounts will be permitted to log in.

 Background:
    Given database is seeded

  Scenario: Successful login
    Given a valid user
    When I go to the login page
    And I fill in "Email" with "test@columbia.edu"
    And I fill in "Password" with "1234"
    And I press "Log In"
    Then I should see "Successfully Logged In!"

  Scenario: Unsuccessful login
    When I go to the login page
    And I fill in "Email" with "user@columbia.com"
    And I fill in "Password" with "wrongpassword"
    And I press "Log In"
    Then I should be on the login page
    And I should see "Invalid Email or Password"

  Scenario: Register a new account
    When I go to the signup page
    And I fill in "First Name" with "bob"
    And I fill in "Last Name" with "dylan"
    And I fill in "Email" with "newuser@columbia.com"
    And I fill in "Password" with "newpassword"
    And I fill in "Password Confirmation" with "newpassword"
    And I press "Register"
    Then I should see "Account Successfully Created!"