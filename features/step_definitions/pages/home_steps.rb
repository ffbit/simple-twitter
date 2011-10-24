Given /^I'm at the home page$/ do
  visit path_to('the home page')
end

Then /^I should see "([^"]*)"$/ do |text|
  element = find('body', :text => text)
  element.should be_visible
end

Then /^I should see [ anthe]{,4}"([^"]*)" link$/ do |text|
  element = find('a', :text => text)
  element.should be_visible
end

Then /^I should see [ anthe]{,4}"([^"]*)" field$/ do |field|
  find_field(field.capitalize).should be_visible
end

