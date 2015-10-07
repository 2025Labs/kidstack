class CatagoriesController < ApplicationController
   #requires user authentication before running games.  will automatically redirect
   before_action :authenticate_user!, :only => [:game]
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
    @answer = nil
  end

  def question
    @catagory = Catagory.find(params[:catagory_id])
    @question = Question.find(params[:id])
    respond_to do |format|
      format.js {render :layout => false}
    end
  end

  def answer
    @catagory = Catagory.find(params[:catagory_id])
    @question = Question.find(params[:id])
    @answer = Answer.find(params[:answer_id])
    respond_to do |format|
      format.js {render :layout => false}
    end
  end


  def cat_topic_nav
    @catagory = Catagory.find_by_name(params[:id])
  end

  def cat_banner
    @catagory = Catagory.find(params[:catagory_id])
  end

  def game

     @catagory = Catagory.find(params[:catagory_id])
  end 


end
