class Slide < ActiveRecord::Base
  belongs_to :topic
  belongs_to :catagory
  
    def next
        topic.slides.where("id > ?", id).order("id ASC").first
    end

    def prev
      topic.slides.where("id < ?", id).order("id DESC").first
    end

    def catnext
      catagory.slides.where("id > ?", id).order("id ASC").first
    end

    def catprev
      catagory.slides.where("id < ?", id).order("id DESC").first
    end     

  
    
end
