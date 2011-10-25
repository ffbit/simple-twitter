Given /^I'm not signed in$/ do
  visit path_to('the sign out page')
end

Given /^I'm at the sign up page$/ do
  visit path_to('the sign up page')
end

When /^I fill in [ anthe]{,4}"([^"]*)" field with "([^"]*)"$/ do |locator, value|
  fill_in locator.capitalize, :with => value
end

When /^I click [ anthe]{,4}"([^"]*)" button$/ do |locator|
  click_button locator
end

