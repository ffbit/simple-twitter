require 'factory_girl'

Factory.define :user do |user|
  user.email                 { Factory.next(:email) }
  user.password              "secret"
  user.password_confirmation "secret"
end

Factory.define :tweet do |tweet|
  tweet.content              "Some content"
  tweet.association          :user
end

Factory.sequence :email do |n|
  "user-#{n}@examle.com"
end

