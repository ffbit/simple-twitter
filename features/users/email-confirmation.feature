Feature: Email Confirmation after Sign up
  In order to provide email confirmation
  As a signed up user
  I want to be able to confirm my account through a confirmation link
  
  Scenario: Confirmation of an existing signed up user
    Given I have 1 signed up unconfirmed user
    When I confirm the user
    Then I should have 1 confirmed user

