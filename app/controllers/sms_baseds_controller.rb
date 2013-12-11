class SmsBasedsController < ApplicationController
  before_action :set_sms_based, only: [:show, :edit, :update, :destroy]

  # GET /sms_baseds
  # GET /sms_baseds.json
  def index
    @sms_baseds = SmsBased.all
  end

  # GET /sms_baseds/1
  # GET /sms_baseds/1.json
  def show
  end

  # GET /sms_baseds/new
  def new
    @sms_based = SmsBased.new
  end

  # GET /sms_baseds/1/edit
  def edit
  end

  # POST /sms_baseds
  # POST /sms_baseds.json
  def create
    @sms_based = SmsBased.new(sms_based_params)

    respond_to do |format|
      if @sms_based.save
        format.html { redirect_to admin_services_path, notice: 'successfully created.' }
        format.json { render action: 'show', status: :created, location: @sms_based }
      else
        format.html { redirect_to admin_services_path, notice: 'Failed.' }
        format.json { render json: @sms_based.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sms_baseds/1
  # PATCH/PUT /sms_baseds/1.json
  def update
    respond_to do |format|
      if @sms_based.update(sms_based_params)
        format.html { redirect_to @sms_based, notice: 'Sms based was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sms_based.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sms_baseds/1
  # DELETE /sms_baseds/1.json
  def destroy
    @sms_based.destroy
    respond_to do |format|
      format.html { redirect_to sms_baseds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sms_based
      @sms_based = SmsBased.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sms_based_params
      params.require(:sms_based).permit(:body)
    end
end
