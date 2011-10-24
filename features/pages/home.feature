Feature: Home page
  In order to have a home page
  As a user
  I want to see home page's attributes
  
  Scenario: A slogan
    Given I'm at the home page
    Then I should see "A Simple Clone of Twitter"
  
  Scenario: A Sign up Link
    Given I'm at the home page
    Then I should see a "Sign up" link
  
