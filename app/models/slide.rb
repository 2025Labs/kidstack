class Slide < ActiveRecord::Base
  belongs_to :topic
  
  def next
    topic.slides.where("id > ?", id).order("id ASC").first
  end

  def prev
    topic.slides.where("id < ?", id).order("id DESC").first
  end
  

        
    
end
