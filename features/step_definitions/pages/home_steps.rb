Given /^I'm at the home page$/ do
  visit path_to('the home page')
end

Then /^I shoud see "([^"]*)"$/ do |text|
  element = find('body', :text => text)
  element.should be_visible
end

