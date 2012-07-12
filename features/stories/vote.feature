Feature: Vote for Story

Background: 

Given I am user "user@email.com" with password "foobar"
And I visit "/users/sign_in"
And I fill in "Email" with "user@email.com"
And I fill in "Password" with "foobar"
And I click "Sign in"


Scenario: Vote Up Story

Given I have a course named "Ruby on Rails 101"
When I visit "/"
And I should see "up 0 down 0"
And I click link "Vote Up"
Then I should see "up 1 down 0"