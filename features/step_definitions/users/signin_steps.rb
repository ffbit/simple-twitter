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

