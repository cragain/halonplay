class BusinessSummaryController < ApplicationController

  def contact_info
  end
  
  def ein
  end

  def schedule_b
  end

  def fixed_assets
  end
  
  def initialize_business_summary
    @business_summary = BusinessSummary.new
  end

end
