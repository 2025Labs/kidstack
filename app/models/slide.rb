class Slide < ActiveRecord::Base
  belongs_to :topic
  belongs_to :catagory
  
    def next
      if topic.id.nil?
        if catagory.id.present?
          catagory.slides.where("id > ?", id).order("id ASC").first
        end 
      else
        if topic.id.present?
          topic.slides.where("id > ?", id).order("id ASC").first
        end
      end
    end

    def prev
  
       if topic_id.blank?
          catagory.slides.where("id < ?", id).order("id DESC").first
        else
          topic.slides.where("id < ?", id).order("id DESC").first
        end
        
      
    end
  
end
