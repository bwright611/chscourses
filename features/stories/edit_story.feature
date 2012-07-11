Feature: Edit Story

Scenario: Story can be Edited

Given I have a course named "Foo"
And I visit "/latest"
And I click link "Edit"
And I fill in "Title" with "Bar"
And I click "Submit"
Then I should see "Successfully updated course"