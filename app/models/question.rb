class Question < ActiveRecord::Base
	belongs_to :topic
  	belongs_to :catagory
  	has_many :answers
end
