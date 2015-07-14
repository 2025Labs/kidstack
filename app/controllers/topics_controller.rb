class TopicsController < ApplicationController
  def new
  end


  def show
    @topic = Topic.find_by_name(params[:id])
    @catagory = Catagory.find(@topic.catagory_id)
#    @topics = @catagory.topics.all
    @topics = @catagory.topics.order("id")
#    @sections = @topic.sections.all  
    @sections = @topic.sections.order("id")
  end
  

  def quiz
    @topic = Topic.find(params[:topic_id])
    @catagory = Catagory.find(@topic.catagory_id)
    @questions = @topic.questions.order("id")
    @question = @questions.first 
    
  end

  #def quiz_right_answer
   # @topic = Topic.find(params[:topic_id])
    #@catagory = Catagory.find(@topic.catagory_id)
    #@question = @topic.questions.find(params[:id])
  #end

  #def quiz_wrong_answer
   # @topic = Topic.find(params[:topic_id])
    #@catagory = Catagory.find(@topic.catagory_id)
    #@question = @topic.questions.find(params[:id])
    #@answer = @question.answers.find(params[:answer_id])
  #end

  #def quiz_next_question
   # @topic = Topic.find(params[:topic_id])
   # @catagory = Catagory.find(@topic.catagory_id)
   # @question = @topic.questions.find(params[:id])
  #end

end
