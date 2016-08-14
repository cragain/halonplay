class BusinessSummaryController < ApplicationController

  include Wicked::Wizard
  steps :contact_info, :ein
  
  def show
    @user = current_user
    render_wizard
  end
  
  
  def contact_info
  end
  
  def ein
  end

  def schedule_b
  end

  def fixed_assets
  end
  
  

end
