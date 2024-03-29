@user-page
Feature: User's page
  In order to have user's page
  As a user
  I want to be able to have an own page
  
  Background: Sing in
    Given I have a user
    When I sign in
  
  Scenario: Show user's page after successful sing in
    Then I should be at the user's page
  
  Scenario: Show user's email address after sing in
    Then I should see user's email
  
  Scenario: Show user's avatar after sing in
    Then I should see user's avatar
  
  Scenario: Edit user's profile link
    Then I should see "Edit profile" link
  
  Scenario: Who to follow link
    Then I should see "Who to follow" link
  
  Scenario: Sign out link
    Then I should see "Sign out" link
  
  Scenario: Home link
    Then I should see "Home" link
  
  Scenario: Clicking Who to follow link
    When I click "Who to follow" link
    Then I should see "List of users"

