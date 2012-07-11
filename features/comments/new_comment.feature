Feature: New Comment

Scenario: Happy Path

Given I have a course named "Rails"
And I visit "/latest"
And I click link "new comment"
And I fill in "Comment" with "Foo Bar..........."
And I click "Submit"
Then I should see "Successfully submitted comment"
And I visit "/latest"
And I should see "comments (1)"