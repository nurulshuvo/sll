class IvrServicesController < ApplicationController
  before_action :set_ivr_service, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!

  # GET /ivr_services
  # GET /ivr_services.json
  def index
    @ivr_services = IvrService.all
  end

  # GET /ivr_services/1
  # GET /ivr_services/1.json
  def show
  end

  # GET /ivr_services/new
  def new
    @ivr_service = IvrService.new
  end

  # GET /ivr_services/1/edit
  def edit
  end

  # POST /ivr_services
  # POST /ivr_services.json
  def create
    @ivr_service = IvrService.new(ivr_service_params)

    respond_to do |format|
      if @ivr_service.save
        format.html { redirect_to admin_path, notice: 'Successfully created.' }
        format.json { render action: 'show', status: :created, location: @ivr_service }
      else
        format.html { redirect_to admin_path, notice: 'Failed.' }
        format.json { render json: @ivr_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ivr_services/1
  # PATCH/PUT /ivr_services/1.json
  def update
    respond_to do |format|
      if @ivr_service.update(ivr_service_params)
        format.html { redirect_to @ivr_service, notice: 'Ivr service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ivr_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ivr_services/1
  # DELETE /ivr_services/1.json
  def destroy
    @ivr_service.destroy
    respond_to do |format|
      format.html { redirect_to ivr_services_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ivr_service
      @ivr_service = IvrService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ivr_service_params
      params.require(:ivr_service).permit(:body)
    end
end
