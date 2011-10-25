Given /^I have a confirmed user$/ do
  @user = Factory(:user)
  @user.confirm!
  @user.save!
  @user.should be_confirmed
end

When /^I sign in$/ do
  visit path_to('the sign in page')
  When %{I fill in an "email" field with "#{@user.email}"}
  And %{I fill in a "password" field with "#{@user.password}"}
  And %{I click a "Sign in" button}
end

Given /^I'm at the sign in page$/ do
  visit path_to('the sign in page')
end

When /^I sing in with a wrong email\/password combination$/ do
  When %{I fill in an "email" field with "not-signed-up@email.com"}
  And %{I fill in a "password" field with ""}
  And %{I click a "Sign in" button}
end


