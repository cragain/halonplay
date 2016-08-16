class TaxReturnsController < ApplicationController
  before_filter :load_user
  
  
  def intitialize
    @tax_return = tax_return
  end
  
  def index
   @tax_returns = @user.tax_returns.all
  end

  def show
    @tax_return = @user.tax_returns.find(params[:id])
  end
  
  def new
    @tax_return = @user.tax_returns.new
  end
  
  def create
    @tax_return = @user.tax_returns.build(tax_return_params)
    
    if @tax_return.save
      redirect_to user_tax_returns_path
    else
      render 'new'
    end
  end
  
  def update
    @tax_return = @user.tax_returns.find(params[:id])
    respond_to do |format|
      if @tax_return.update(tax_return_params)
        format.html { redirect_to edit_user_tax_return_path(@user, @tax_return), notice: 'Return was successfully updated.' }
        format.json { render :show, status: :ok, location: @tax_return }
      else
        format.html { render :edit }
        format.json { render json: @tax_return.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
  @tax_return = @user.tax_returns.find(params[:id])
  
  @tax_return.destroy
    respond_to do |format|
      format.html { redirect_to user_tax_returns_path(@user), notice: 'Tax Return was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  
  private
  
  def tax_return_params
    params.require(:tax_return).permit(:business_id)
  end
  
  def load_user
      @user = User.find(params[:user_id])
  end
  
end
