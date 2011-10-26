Given /^I've got (\d+) tweets?$/ do |count_str|
  count_str.to_i.times do
    Factory(:tweet, :user => @user)
  end
end

Then /^I should see (\d+) tweets$/ do |count_str|
  tweets = all("#tweets .tweet")
  tweets.count.should == count_str.to_i
end

