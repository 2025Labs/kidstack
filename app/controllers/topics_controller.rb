class TopicsController < ApplicationController
  def new
  end

  def show
    @topic = Topic.find_by_name(params[:id])
    @peanuts = @topic.c_type
    @catagory = Catagory.find_by_name(@peanuts)
    #slideshow has to come in here
    
    #I want the catagory where params[:id].c_type = Catagory.name
  end
end
