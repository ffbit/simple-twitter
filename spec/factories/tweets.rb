# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tweet do
    content "MyString"
    user_id 1
  end
end
