class SlidesController < ApplicationController
  def new
  end
  
  def show
  end
  
  def slides
    respond_to do |format|
      format.js {render :layout => false}
    end
  end
end
