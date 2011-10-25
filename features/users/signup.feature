Feature: Sign up
  In order to have access to protected section of the app
  As a user
  I want to be able to sign up with my details
  
  Scenario: Sign up with valid details
    Given I'm not signed in
    And I'm at the sign up page
    When I fill in an "email" field with "good@email.com"
    And I fill in a "password" field with "secret"
    And I fill in a "password confirmation" field with "secret"
    And I click a "Sign up" button
    Then I should see "You have signed up successfully. Please check your email and confirm your account."

