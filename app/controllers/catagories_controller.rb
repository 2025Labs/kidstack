class CatagoriesController < ApplicationController
  def new
  end
  
  def index
    @catagories = Catagory.all
  end
  
  def cathome
  end
  
  def show
    @catagory = Catagory.find(params[:id])
  end
end
