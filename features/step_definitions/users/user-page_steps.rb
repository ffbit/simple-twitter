Given /^I have a user$/ do
  Given %{I have a confirmed user}
end

Then /^I should be at the user's page$/ do
  page.current_url.should =~ /users\/show/
end

Then /^I should see user's email$/ do
  Then %{I should see "#{@user.email}"}
end

Then /^I should see user's avatar$/ do
  find('img#avatar').should be_visible
end

