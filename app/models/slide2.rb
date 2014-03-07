class Slide < ActiveRecord::Base
  belongs_to :topic
  belongs_to :catagory
  
    def next
      if topic.id.blank?
          catagory.slides.where("id > ?", id).order("id ASC").first
      else
          topic.slides.where("id > ?", id).order("id ASC").first
      end
    end

    def prev
  
      if topic.id.blank?
          catagory.slides.where("id < ?", id).order("id DESC").first
      else
          topic.slides.where("id < ?", id).order("id DESC").first
      end
        
    end
  
end
