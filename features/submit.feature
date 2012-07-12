Feature: Submit

Background: 

Given I am user "user@email.com" with password "foobar"
And I visit "/users/sign_in"
And I fill in "Email" with "user@email.com"
And I fill in "Password" with "foobar"
And I click "Sign in"

Scenario: Happy Path

Given I visit "/submit"
When I fill in "Title" with "Foo Bar"
When I fill in "Url" with "http://www.google.com"
When I click "Submit"
Then I should see "Successfully submitted course"

Scenario: Sad Path

Given I visit "/submit"
When I fill in "Title" with "Foo Bar"
When I click "Submit"
Then I should not see "Successfully submitted course"

