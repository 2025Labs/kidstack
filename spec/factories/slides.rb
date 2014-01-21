# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
factory :slide do
    image "MyString"
    title "MyString"
    desc "MyText"
    audio "MyString"
    sort_id 1
    slideshow_id 0
  end
end
