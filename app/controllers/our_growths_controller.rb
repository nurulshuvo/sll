class OurGrowthsController < ApplicationController
  before_action :set_our_growth, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!

  # GET /our_growths
  # GET /our_growths.json
  def index
    @our_growths = OurGrowth.all
  end

  # GET /our_growths/1
  # GET /our_growths/1.json
  def show
  end

  # GET /our_growths/new
  def new
    @our_growth = OurGrowth.new
  end

  # GET /our_growths/1/edit
  def edit
  end

  # POST /our_growths
  # POST /our_growths.json
  def create
    @our_growth = OurGrowth.new(our_growth_params)

    respond_to do |format|
      if @our_growth.save
        format.html { redirect_to admin_about_path, notice: 'Successfully created.' }
        format.json { render action: 'show', status: :created, location: @our_growth }
      else
        format.html { redirect_to admin_about_path, notice: 'Failed' }
        format.json { render json: @our_growth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /our_growths/1
  # PATCH/PUT /our_growths/1.json
  def update
    respond_to do |format|
      if @our_growth.update(our_growth_params)
        format.html { redirect_to @our_growth, notice: 'Our growth was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @our_growth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /our_growths/1
  # DELETE /our_growths/1.json
  def destroy
    @our_growth.destroy
    respond_to do |format|
      format.html { redirect_to our_growths_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_our_growth
      @our_growth = OurGrowth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def our_growth_params
      params.require(:our_growth).permit(:title, :body)
    end
end
