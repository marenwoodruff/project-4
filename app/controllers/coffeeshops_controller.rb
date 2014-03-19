class CoffeeshopsController < ApplicationController
  before_action :set_coffeeshop, only: [:show, :edit, :update, :destroy]

  def index
    @coffeeshops = Coffeeshop.all
  end

  def show
  end

  def new
    @coffeeshop = Coffeeshop.new
  end

  def edit
  end

  def create
    @coffeeshop = Coffeeshop.new(coffeeshop_params)

    respond_to do |format|
      if @coffeeshop.save
        format.html { redirect_to @coffeeshop, notice: 'Coffeeshop was successfully created.' }
        format.json { render action: 'show', status: :created, location: @coffeeshop }
      else
        format.html { render action: 'new' }
        format.json { render json: @coffeeshop.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @coffeeshop.update(coffeeshop_params)
        format.html { redirect_to @coffeeshop, notice: 'Coffeeshop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @coffeeshop.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @coffeeshop.destroy
    respond_to do |format|
      format.html { redirect_to coffeeshops_url }
      format.json { head :no_content }
    end
  end

  private
    
    def set_coffeeshop
      @coffeeshop = Coffeeshop.find(params[:id])
    end

    def coffeeshop_params
      params.require(:coffeeshop).permit(:name, :display_address, :display_city, :display_state, :display_zip, :neighborhood, :phone, :fair_trade, :organic, :direct_trade, :yelp_rating, :yelp_review, :yelp_id, :yelp_url, :url)
    end
end
