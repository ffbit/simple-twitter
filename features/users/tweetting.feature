@tweetting
Feature: Tweeting
  In order to tweet
  As a user
  I want to be able to tweet
  
  Background: a Signed in User on the user's page
    Given I'm signed in
    And I'm on the user's page
  
  Scenario: Show an invitation for tweetting
    Then I should see "What’s happening?"
  
  Scenario: Tweetting form
    Then I should see "content" field
    And I should see "Tweet" button
  
