Feature: Home page
  In order to have a home page
  As a user
  I want to see home page's attributes
  
  Background: Visit the Home Page
    Given I'm at the home page
  
  Scenario: A Sign up Link
    Then I should see a "Sign up" link
  
  Scenario: A Sing in Form
    Then I should see an "email" field
    And I should see a "password" field

