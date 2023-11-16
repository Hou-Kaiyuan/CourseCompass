Feature: Login

  The website will support user login functionality.
  If the user is not logged in, the webpage will redirect the user to the login page, on all pages except log in page.
  Only Columbia accounts will be permitted to log in.

 Background:
    Given database is seeded

#  Scenario: Successful login
#    When I go to the login page
#    And I fill in "Email" with "test1@columbia.edu"
#    And I fill in "Password" with "1234"
#    And I press "Log In"
#    Then I should land on the user page for "test1@columbia.edu"
#    And I should see "Welcome, test1@columbia.edu"
#
#  Scenario: Unsuccessful login
#    When I go to the login page
#    And I fill in "Email" with "user@columbia.com"
#    And I fill in "Password" with "wrongpassword"
#    And I press "Log In"
#    Then I should be on the new_session page
#    And I should see "Invalid email or password"

  Scenario: Register a new account
    When I go to the login page
    And I follow "Sign Up"
    And I fill in "First Name" with "bob"
    And I fill in "Last Name" with "dylan"
    And I fill in "Email" with "bobby.dylann@yahoo.com"
    And I fill in "Password" with "abc"
    And I fill in "Password Confirmation" with "abc"
    And I press "Register"
    Then I should see "Account Successfully Created!"