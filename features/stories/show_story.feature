Feature: Show Story

Scenario: Show Story if no url but text

Given I have a course named "Foo" with "A Foo Bar Story"
And I visit "/latest"
When I click link "Foo"
Then I should see "A Foo Bar Story"