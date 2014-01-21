# Read about factories at https://github.com/thoughtbot/factory_girl




FactoryGirl.define do

factory :topic do
    name "MyString"
    c_type "MyString"
    video "MyString"
    navgraphic "MyString"
    headergraphic "MyString"
    catagory_id  0

  #factory :topic_with_slideshow do
  #  after_create do |topic|
  #    create(:slideshow, topic: topic)
  #  end
  #end
end




 

end