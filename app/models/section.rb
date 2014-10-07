class Section < ActiveRecord::Base
  belongs_to :topic
  belongs_to :catagory
end
