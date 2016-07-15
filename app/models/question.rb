class Question < ActiveRecord::Base
	belongs_to :topic
  	belongs_to :catagory
  	has_many :answers


    def catnext

      if topic_id == nil
        catagory.questions.where("id > ?", id).order("id ASC").first
      else
        topic.questions.where("id > ?", id).order("id ASC").first
      end
    end

    def catprev
      catagory.questions.where("id < ?", id).order("id DESC").first
    end  

   
end
