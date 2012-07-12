Feature: Edit Story

Background: 

Given I am user "user@email.com" with password "foobar"
And I visit "/users/sign_in"
And I fill in "Email" with "user@email.com"
And I fill in "Password" with "foobar"
And I click "Sign in"


Scenario: Story can be Edited

Given I have a course named "Foo"
And I visit "/latest"
And I click link "Edit"
And I fill in "Title" with "Bar"
And I click "Submit"
Then I should see "Successfully updated course"