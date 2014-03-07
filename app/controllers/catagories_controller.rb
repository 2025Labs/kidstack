class CatagoriesController < ApplicationController
  def new
  end
  
  def index
    @catagories = Catagory.all
  end
  
  
  def show
    @catagory = Catagory.find_by_name(params[:id])
    @slide = @catagory.slides.first
  end
  
  def catslide
    @catagory = Catagory.find(params[:catagory_id])
    @slide = @catagory.slides.find(params[:id])
    respond_to do |format|
      format.js {render :layout => false}
    end
  end
  
  def audio
    @catagory = Catagory.find(params[:catagory_id])
    @slide = @catagory.slides.find(params[:id])
    respond_to do |format|
      format.js {render :layout => false}
    end
  end
  
end
