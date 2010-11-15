class Product < ActiveRecord::Base
  
  # belongs_to :type, :through => :product_type_id
  
  has_many :items
  
  def type
    Type.find(self.product_type_id)
  end
end
