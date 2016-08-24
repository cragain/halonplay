class SCorpController < ApplicationController
   before_filter :load_user
  
  
  
  
  def show
   
    render :layout => "s_corp"
  end






  private

  def load_user
      @user = User.find(params[:user_id])
      @tax_return = TaxReturn.find(params[:tax_return_id])
  end

end
