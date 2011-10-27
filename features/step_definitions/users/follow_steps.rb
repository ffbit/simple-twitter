Given /^I have (\d+) users?$/ do |count_str|
  count_str.to_i.times do
    @users ||= []
    user = Factory(:user)
    user.confirm!
    user.save!
    @users.push(user)
  end
end

Then /^I should see emails of other users as links$/ do
  @users.each do |user|
    Then %{I should see "#{user.email}" link}
  end
end

Then /^I should see avatars of other users$/ do
  find('img.avatar').should be_visible
end

Then /^I should not see email of user as link$/ do
  Then %{I should not see "#{@user.email}" link}
end

Given /^I have (\d+) unconfirmed users$/ do |count_str|
  count_str.to_i.times do
    @users ||= []
    @users.push(Factory(:user))
  end
end

Then /^I should not see emails of other users as links$/ do
  @users.each do |user|
    Then %{I should not see "#{user.email}" link}
  end
end

When /^I click on the user email link$/ do
  @users.each do |user|
    When %{I click "#{user.email}" link}
  end
end

Then /^I should see another user's avatar$/ do
  Then %{I should see user's avatar}
end

Then /^I should see another user's email$/ do
  @users.each do |user|
    Then %{I should not see "#{user.email}"}
  end
end

