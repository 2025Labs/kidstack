class CatagoriesController < ApplicationController
  def new
  end
  
  def index
    @catagories = Catagory.all
  end
  
  
  def show
    @catagory = Catagory.find_by_name(params[:id])
    @topics = Topic.where(c_type: params[:id])
  end
end
