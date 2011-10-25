Given /^I have a signed up unconfirmed user$/ do
  @user = Factory(:user)
end

When /^I follow a confirmation link$/ do
  visit  path_to('the confirmation page',
                 :confirmation_token => @user.confirmation_token)
end

Then /^I should have confirmed user$/ do
  @user.reload.should be_confirmed
end

When /^I follow a confirmation link with an invalid confirmation token$/ do
  visit  path_to('the confirmation page',
                 :confirmation_token => "an_invalid_confirmation_token")
end

