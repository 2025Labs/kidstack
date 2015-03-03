# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    question "MyString"
    answer1 "MyString"
    answer2 "MyString"
    answer3 "MyString"
    correct_answer "MyString"
    explanation "MyText"
    question_image "MyString"
    topic_id 1
    catagory_id 1
  end
end
