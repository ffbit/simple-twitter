Given /^I have a signed up unconfirmed user$/ do
  @user = Factory(:user)
end

When /^I follow a confirmation link$/ do
  # Is it good or bad?
  visit "#{confirmation_path}?confirmation_token=#{@user.confirmation_token}"
end

Then /^I should have confirmed user$/ do
  @user.reload
  @user.should be_confirmed
end

When /^I follow a confirmation link with an invalid confirmation token$/ do
  visit "#{confirmation_path}?confirmation_token=a_bad_confirmation_token"
end

