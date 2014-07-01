class TopicsController < ApplicationController
  def new
  end


  def show
    @topic = Topic.find_by_name(params[:id])
    @catagory = Catagory.find(@topic.catagory_id)
    @topics = @catagory.topics.all  
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


end
