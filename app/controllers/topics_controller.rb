class TopicsController < ApplicationController
  def new
  end

  def show
    @topic = Topic.find_by_name(params[:id])

    @catagory = Catagory.find(@topic.catagory_id)

  end
end
