class Catagory < ActiveRecord::Base
  has_many :topics
  has_many :sections

end
