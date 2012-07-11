Feature: Destroy Story

Scenario: Story can be Destroyed

Given I have a course named "Foo"
And I visit "/latest"
And I click link "Remove"
Then I should see "Successfully removed course"