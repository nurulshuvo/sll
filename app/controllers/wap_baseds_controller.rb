class WapBasedsController < ApplicationController
  before_action :set_wap_based, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!

  # GET /wap_baseds
  # GET /wap_baseds.json
  def index
    @wap_baseds = WapBased.all
  end

  # GET /wap_baseds/1
  # GET /wap_baseds/1.json
  def show
  end

  # GET /wap_baseds/new
  def new
    @wap_based = WapBased.new
  end

  # GET /wap_baseds/1/edit
  def edit
  end

  # POST /wap_baseds
  # POST /wap_baseds.json
  def create
    @wap_based = WapBased.new(wap_based_params)

    respond_to do |format|
      if @wap_based.save
        format.html { redirect_to admin_services_path, notice: 'successfully created.' }
        format.json { render action: 'show', status: :created, location: @wap_based }
      else
        format.html { redirect_to admin_services_path, notice: 'Failed' }
        format.json { render json: @wap_based.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wap_baseds/1
  # PATCH/PUT /wap_baseds/1.json
  def update
    respond_to do |format|
      if @wap_based.update(wap_based_params)
        format.html { redirect_to @wap_based, notice: 'Wap based was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wap_based.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wap_baseds/1
  # DELETE /wap_baseds/1.json
  def destroy
    @wap_based.destroy
    respond_to do |format|
      format.html { redirect_to wap_baseds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wap_based
      @wap_based = WapBased.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wap_based_params
      params.require(:wap_based).permit(:body)
    end
end
