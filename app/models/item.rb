class Item < ActiveRecord::Base
  
  belongs_to :product
  
  has_many :components
end