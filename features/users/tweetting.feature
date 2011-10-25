@tweetting
Feature: Tweeting
  In order to tweet
  As a user
  I want to be able to tweet
  
  Scenario: Show an invitation for twitting
    Given I'm signed in
    And I'm on the user's page
    Then I should see "What’s happening?"

