class TopicsController < ApplicationController
  def new
  end

  def show
    @topic = Topic.find_by_name(params[:id])
    @catagory = Catagory.find(@topic.catagory_id)
    @first_slide = @topic.slides.first
    @slide = @topic.slides.last
    @slides = @topic.slides.all
  end
  
  def next_slide
    @next = @topic.slides.where("id > ?", id).order("id ASC").first
  end
  
  def prev_slide
    @prev = topic.slides.where("id < ?", id).order("id DESC").first
  end
  
  def slide
    @topic = Topic.find(params[:topic_id])
    @slide = @topic.slides.find(params[:id])
    respond_to do |format|
      format.js {render :layout => false}
    end
  end

  def arrow
    respond_to do |format|
      
      format.js
    end
  end

end
