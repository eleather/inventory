class Material < ActiveRecord::Base
  
  has_many :stocks
  
  def pretty_name
    [self.name, self.color].join(' - ')
  end
end
