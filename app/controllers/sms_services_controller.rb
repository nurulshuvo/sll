class SmsServicesController < ApplicationController
  before_action :set_sms_service, only: [:show, :edit, :update, :destroy]

  # GET /sms_services
  # GET /sms_services.json
  def index
    @sms_services = SmsService.all
  end

  # GET /sms_services/1
  # GET /sms_services/1.json
  def show
  end

  # GET /sms_services/new
  def new
    @sms_service = SmsService.new
  end

  # GET /sms_services/1/edit
  def edit
  end

  # POST /sms_services
  # POST /sms_services.json
  def create
    @sms_service = SmsService.new(sms_service_params)

    respond_to do |format|
      if @sms_service.save
        format.html { redirect_to admin_path, notice: 'Successfully created.' }
        format.json { render action: 'show', status: :created, location: @sms_service }
      else
        format.html { redirect_to admin_path, notice: 'Failed' }
        format.json { render json: @sms_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sms_services/1
  # PATCH/PUT /sms_services/1.json
  def update
    respond_to do |format|
      if @sms_service.update(sms_service_params)
        format.html { redirect_to @sms_service, notice: 'Sms service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sms_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sms_services/1
  # DELETE /sms_services/1.json
  def destroy
    @sms_service.destroy
    respond_to do |format|
      format.html { redirect_to sms_services_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sms_service
      @sms_service = SmsService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sms_service_params
      params.require(:sms_service).permit(:body)
    end
end
