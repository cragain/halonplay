class TaxReturn < ActiveRecord::Base
  belongs_to :user
  belongs_to :business
  
  validates :business_id, uniqueness: true
  
  def current_business
    Business.find(self.business_id)
  end
  
end
