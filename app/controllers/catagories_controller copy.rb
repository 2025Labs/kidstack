class CatagoriesController < ApplicationController
  def new
  end
  
  def index
    @catagories = Catagory.all
  end
  
  
  def show
    @catagory = Catagory.find_by_name(params[:id])
    @sections = @catagory.sections.order("id")
    
  end

  def project
    @catagory = Catagory.find_by_name(params[:id])
  end

  def news
  end

  def quiz
    @catagory = Catagory.find(params[:catagory_id])
    @questions = @catagory.questions.order("id")
    @question = @questions.first
  end

  def quiz_right_answer
    @catagory = Catagory.find(params[:catagory_id])
    @question = @catagory.questions.find(params[:id])
  end

  def quiz_wrong_answer
    @catagory = Catagory.find(params[:catagory_id])
    @question = @catagory.questions.find(params[:id])
    @answer = @question.answers.find(params[:answer_id])
  end

  def answer
    @question = @catagory.questions.find(params[:id])
    @answer = @question.answers.find(params[:answer_id])
    respond_to do |format|
      format.js {render :layout => false}
    end
  end

  def quiz_next_question
    @catagory = Catagory.find(params[:catagory_id])
    @question = @catagory.questions.find(params[:id])
  end

  def cat_topic_nav
    @catagory = Catagory.find_by_name(params[:id])
  end

  def cat_banner
    @catagory = Catagory.find(params[:catagory_id])
  end


end
