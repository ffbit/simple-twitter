@user-follow
Feature: Following
  In order to be social
  As a user
  I want to be able to follow users
  
  Scenario: Visit Who to follow link
    Given I'm signed in
    And I'm at the who to follow page
    Then I should see "List of users"

