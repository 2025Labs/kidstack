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

  
end
