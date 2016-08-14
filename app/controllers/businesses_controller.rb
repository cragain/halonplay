class BusinessesController < ApplicationController
  before_filter :load_user
  
  before_action :show, only: [:show, :edit, :update, :destroy]
  
  

  # GET /businesses
  # GET /businesses.json
  def index
    @businesses = @user.businesses.all
  end

  # GET /businesses/1
  # GET /businesses/1.json
  def show
    @business = @user.businesses.find(params[:id])
  end

  # GET /businesses/new
  def new
    @business = @user.businesses.new
  end

  # GET /businesses/1/edit
  def edit
  end

  # POST /businesses
  # POST /businesses.json
  def create
    @business = @user.businesses.build(business_params)

    respond_to do |format|
      if @business.save
        format.html { redirect_to root_path(@user), notice: 'Business was successfully created.' }
        format.json { render :show, status: :created, location: @business }
      else
        format.html { render :new }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /businesses/1
  # PATCH/PUT /businesses/1.json
  def update
    @business = @user.businesses.find(params[:id])
    respond_to do |format|
      if @business.update(business_params)
        format.html { redirect_to root_path(@user), notice: 'Business was successfully updated.' }
        format.json { render :show, status: :ok, location: @business }
      else
        format.html { render :edit }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businesses/1
  # DELETE /businesses/1.json
  def destroy
    @business = @user.businesses.find(params[:id])
    
    @business.destroy
    respond_to do |format|
      format.html { redirect_to root_path(@user), notice: 'Business was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
   
    # Never trust parameters from the scary internet, only allow the white list through.
   def business_params
    params.require(:business).permit(:business_name, :business_start, :business_street_1, :business_street_2, :business_city, :business_state, :business_zip, :ein, :biz_type, :bac, :method, :activity, :product, :schb3, :schb4a, :schb4b, :schb10a, :schb10b)
   end
    
    def load_user
      @user = User.find(params[:user_id])
    end
end
