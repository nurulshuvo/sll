class IvrBasedsController < ApplicationController
  before_action :set_ivr_based, only: [:show, :edit, :update, :destroy]

  # GET /ivr_baseds
  # GET /ivr_baseds.json
  def index
    @ivr_baseds = IvrBased.all
  end

  # GET /ivr_baseds/1
  # GET /ivr_baseds/1.json
  def show
  end

  # GET /ivr_baseds/new
  def new
    @ivr_based = IvrBased.new
  end

  # GET /ivr_baseds/1/edit
  def edit
  end

  # POST /ivr_baseds
  # POST /ivr_baseds.json
  def create
    @ivr_based = IvrBased.new(ivr_based_params)

    respond_to do |format|
      if @ivr_based.save
        format.html { redirect_to admin_services_path, notice: 'successfully created.' }
        format.json { render action: 'show', status: :created, location: @ivr_based }
      else
        format.html { redirect_to admin_services_path, notice: 'Failed' }
        format.json { render json: @ivr_based.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ivr_baseds/1
  # PATCH/PUT /ivr_baseds/1.json
  def update
    respond_to do |format|
      if @ivr_based.update(ivr_based_params)
        format.html { redirect_to @ivr_based, notice: 'Ivr based was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ivr_based.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ivr_baseds/1
  # DELETE /ivr_baseds/1.json
  def destroy
    @ivr_based.destroy
    respond_to do |format|
      format.html { redirect_to ivr_baseds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ivr_based
      @ivr_based = IvrBased.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ivr_based_params
      params.require(:ivr_based).permit(:body)
    end
end
