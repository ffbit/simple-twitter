@user-page
Feature: User's page
  In order to have user's page
  As a user
  I want to be able to have an own page
  
  Scenario: Show user's page after sing in
    Given I have a user
    When I sign in
    Then I should be at the user's page

