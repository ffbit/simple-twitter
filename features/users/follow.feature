@user-follow
Feature: Following
  In order to be social
  As a user
  I want to be able to follow users
  
  Background: Signed in user
    Given I'm signed in
    
  Scenario: Visit Who to follow link
    Given I'm at the who to follow page
    Then I should see "List of users"
  
  Scenario: List of Users
    Given I have 10 users
    And I'm at the who to follow page
    Then I should see emails of other users as links
    And I should see avatars of other users
    And I should not see email of user as link
  
  Scenario: Unconfirmed users
    Given I have 10 unconfirmed users
    And I'm at the who to follow page
    Then I should not see emails of other users as links
    
  Scenario: Visit another user's page
    Given I have 1 user
    And I'm at the who to follow page
    When I click on the user email link
    Then I should see another user's avatar
    Then I should see another user's email
    And I should see "Follow" link
  
  Scenario: Follow another user
    Given I'm on another user's page
    When I click "Follow" link
    Then I should see "You have successfully followed"
    And I should have 1 followed
  
  Scenario: Unfollow link
    Given I'm on followed user's page
    Then I should see "Unfollow" link
    And I should not see "Follow" link
  
  Scenario: Followers
    Given I have 5 followers
    And I'm on the user's page
    Then I should see "5 followers"
    And I should see 5 avatars of followers
    And I should see 5 links of followers
    
  Scenario: Followeds
    Given I have 3 followeds
    And I'm on the user's page
    Then I should see "3 followeds"
    And I should see 3 avatars of followeds
    And I should see 3 links of followeds

