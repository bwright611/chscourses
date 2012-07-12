Given /^I am user "(.*?)" with password "(.*?)"$/ do |email, password|
  User.create(email: email, password: password, password_confirmation: password)
end