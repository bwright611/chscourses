Given /^I am on the home page$/ do
  visit '/'
end

Then /^I should see "(.*?)"$/ do |text|
  page.should have_content(text)
end

Given /^I visit "(.*?)"$/ do |url|
  visit url
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |field, value|
  fill_in field, with: value
end

When /^I click "(.*?)"$/ do |text|
  click_button text
end

Then /^I should not see "(.*?)"$/ do |text|
  page.should_not have_content(text)
end