class TopicsController < ApplicationController
  def new
  end


  def show
    @topic = Topic.find_by_name(params[:id])
    @catagory = Catagory.find(@topic.catagory_id)
    @topics = @catagory.topics.all
    @slide = @topic.slides.first   
  end
  
  def slide
    @topic = Topic.find(params[:topic_id])
    @catagory = Catagory.find(@topic.catagory_id)
    @slide = @topic.slides.find(params[:id])
    respond_to do |format|
      format.js {render :layout => false}
    end
  end
  
  def activity
    @topic = Topic.find_by_name(params[:id])
    @catagory = Catagory.find(@topic.catagory_id)
    @topics = @catagory.topics.all  
  end
  
  def quiz
    @topic = Topic.find_by_name(params[:id])
    @catagory = Catagory.find(@topic.catagory_id)
    @topics = @catagory.topics.all  
  end
  
  def learnmore
    @topic = Topic.find_by_name(params[:id])
    @catagory = Catagory.find(@topic.catagory_id)
    @topics = @catagory.topics.all  
  end

  def arrow
    respond_to do |format|
      format.js
    end
  end
  


end
