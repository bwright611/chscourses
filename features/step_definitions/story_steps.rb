Given /^I have a course named "(.*?)"$/ do |title|
  Story.new(title: title, body: 'FooBarBaz')
  story.user = User.find_by_email('user@email.com')
  story.save
end