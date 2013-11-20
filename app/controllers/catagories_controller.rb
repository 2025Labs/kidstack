class CatagoriesController < ApplicationController
  def new
  end
  
  def index
    @catagories = Catagory.all
  end
  
  def cathome
  end
end
