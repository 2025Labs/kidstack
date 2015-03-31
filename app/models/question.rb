class Question < ActiveRecord::Base
	belongs_to :topic
  	belongs_to :catagory
  	has_many :answers


    def catnext
      catagory.questions.where("id > ?", id).order("question_num ASC").first
    end

    def catprev
      catagory.questions.where("id < ?", id).order("id DESC").first
    end  

    def topnext
      topic.questions.where("id > ?", id).order("id ASC").first
    end
end
