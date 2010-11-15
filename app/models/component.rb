class Component < ActiveRecord::Base
  
  belongs_to :item
  belongs_to :stock_use
end
