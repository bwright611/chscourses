Feature: Submit

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

