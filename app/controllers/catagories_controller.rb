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
    @catagory = Catagory.find_by_name(params[:id])
    @questions = @catagory.questions.order("id")
    @question = @questions.first
    @answers = @question.answers.order("id")

  end

  def check
    @catagory = Catagory.find_by_name(params[:id])
  end 

  def right_answer
  end

  def wrong_answer
  end

end
