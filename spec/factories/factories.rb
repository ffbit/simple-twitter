require 'factory_girl'
require 'faker'

Factory.define :user do |user|
  user.email                 { Factory.next :email }
  user.password              "secret"
  user.password_confirmation "secret"
end

Factory.define :tweet do |tweet|
  tweet.content              { Faker::Lorem.sentence }
  tweet.association          :user
end

Factory.sequence :email do |n|
  "user-#{n}@example.com"
end

