Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
  element = find('body', :text => text)
  element.should be_visible
end

Then /^I should see [ anthe]{,4}"([^"]*)" link$/ do |text|
  element = find('a', :text => text)
  element.should be_visible
end

Then /^I should not see "([^"]*)" link$/ do |text|
  has_no_link?(text, :class => 'email').should be_true
end


Then /^I should see [ anthe]{,4}"([^"]*)" field$/ do |field|
  find_field(field.capitalize).should be_visible
end

Then /^I should see [ anthe]{,4}"([^"]*)" button$/ do |locator|
  find_button(locator)
end

Then /^I should not see [ anthe]{,4}"([^"]*)" button$/ do |locator|
  has_no_button?(locator).should be_true
end

Then /^I should not see [ anthe]{,4}"([^"]*)"$/ do |text|
  has_no_content?(text).should be_true
end

