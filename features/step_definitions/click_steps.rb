When /^I click [ anthe]{,4}"([^"]*)" button$/ do |locator|
  click_button locator
end

When /^I click [ anthe]{,4}"([^"]*)" button (\d+) times$/ do |locator, count|
  count.to_i.times do
    When %{I click "More" button}
  end
end

When /^I [ anthe]{,4}click "([^"]*)" link$/ do |locator|
  click_link locator
end

