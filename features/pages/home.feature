Feature: Home page
  In order to have a home page
  As a user
  I want to see home page's attributes
  
  Background: Visit the home page
    Given I'm at the home page
  
  Scenario: A slogan
    Then I should see "A Simple Clone of Twitter"
  
  Scenario: A Sign up Link
    Then I should see a "Sign up" link
  
