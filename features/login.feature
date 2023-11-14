Feature: Login

  The website will support user login functionality.
  If the user is not logged in, the webpage will redirect the user to the login page, on all pages except log in page.
  Only Columbia accounts will be permitted to log in.

 Background:
      Given the following users exist:
      | email                | password         |
      | user@columbia.edu    | password123      |

  Scenario: Successful login
    When I go to the login page
    And I fill in "Email" with "user@columbia.com"
    And I fill in "Password" with "password123"
    And I press "Log In"
    Then I should land on the user page for "user@columbia.com"
    And I should see "Welcome, test1@columbia.com"

  Scenario: Unsuccessful login
    When I go to the new_session page
    And I fill in "Email" with "user@columbia.com"
    And I fill in "Password" with "wrongpassword"
    And I press "Log In"
    Then I should be on the new_session page
    And I should see "Invalid email or password"

  Scenario: Register a new account
    When I go to the new_session page
    And I follow "Sign Up"
    And I fill in "Email" with "newuser@columbia.com"
    And I fill in "Password" with "newpassword"
    Then I should be on the user page for "newuser@columbia.com"
    And I should see "Welcome, newuser@columbia.com"