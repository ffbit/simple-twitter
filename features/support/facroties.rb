require 'factory_girl'

Factory.define :user do |user|
  user.email                 "good@email.com"
  user.password              "secret"
  user.password_confirmation "secret"
end

