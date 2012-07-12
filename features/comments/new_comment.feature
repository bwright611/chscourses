Feature: New Comment

Background: 

Given I am user "user@email.com" with password "foobar"
And I visit "/users/sign_in"
And I fill in "Email" with "user@email.com"
And I fill in "Password" with "foobar"
And I click "Sign in"


Scenario: Happy Path

Given I have a course named "Rails"
And I visit "/latest"
And I click link "new comment"
And I fill in "Comment" with "Foo Bar..........."
And I click "Submit"
Then I should see "Successfully submitted comment"
And I visit "/latest"
And I should see "comments (1)"