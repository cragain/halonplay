class Business < ActiveRecord::Base
  
  belongs_to :user
  has_one :tax_return

end
