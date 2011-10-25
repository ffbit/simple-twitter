@email-confirmation
Feature: Email Confirmation after Sign up
  In order to provide email confirmation
  As a signed up user
  I want to be able to confirm my account through a confirmation link
  
  Scenario: Confirmation of an existing signed up user
    Given I have a signed up unconfirmed user
    When I follow a confirmation link
    Then I should see "Your account was successfully confirmed. You are now signed in."
    And I should have confirmed user
  
  Scenario: Confirmation of an invalid confirmation token
    When I follow a confirmation link with an invalid confirmation token
    Then I should see "Confirmation token is invalid"

