class Topic < ActiveRecord::Base
  belongs_to :catagory
  has_many :sections


end

