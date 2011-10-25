Given /^I have a user$/ do
  Given %{I have a confirmed user}
end

Then /^I should be at the user's page$/ do
  puts page.current_url.should =~ /users\/#{@user.id}$/
  pending # express the regexp above with the code you wish you had
end

