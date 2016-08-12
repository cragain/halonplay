class ReturnWizardController < ApplicationController
  include Wicked::Wizard
  
  steps :get_name, :choose_company

  def show
    render_wizard
  end

end
