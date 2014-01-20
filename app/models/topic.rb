class Topic < ActiveRecord::Base
  belongs_to :catagory
  has_one :slideshow

end

