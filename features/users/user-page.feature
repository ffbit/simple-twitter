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

