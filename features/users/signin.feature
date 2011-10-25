@sign-in
Feature: Sing in
  In order to have access to protected section of the app
  As a user
  I want to be able to sign in
  
  Scenario: Valid Sing in
    Given I'm not signed in
    And I have a confirmed user
    When I sign in
    Then I should see "Signed in successfully."
  
  Scenario: Invalid Sing in with a wrong email/password combination
    Given I'm not signed in
    And I'm at the sign in page
    When I sing in with a wrong email/password combination
    Then I should see "Invalid email or password."
    

