Given /^I have a course named "(.*?)"$/ do |title|
  Story.create(title: title, body: 'FooBarBaz')
end