# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    number 1
    answer "MyText"
    image "MyString"
  end
end
