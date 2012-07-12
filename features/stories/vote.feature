Feature: Vote for Story

Scenario: Vote Up Story

Given I have a course named "Ruby on Rails 101"
When I visit "/"
And I should see "up 0 down 0"
And I click link "Vote Up"
Then I should see "up 1 down 0"