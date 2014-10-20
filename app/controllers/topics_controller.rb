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
  


end
