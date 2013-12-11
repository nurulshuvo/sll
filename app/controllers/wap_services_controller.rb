class WapServicesController < ApplicationController
  before_action :set_wap_service, only: [:show, :edit, :update, :destroy]

  # GET /wap_services
  # GET /wap_services.json
  def index
    @wap_services = WapService.all
  end

  # GET /wap_services/1
  # GET /wap_services/1.json
  def show
  end

  # GET /wap_services/new
  def new
    @wap_service = WapService.new
  end

  # GET /wap_services/1/edit
  def edit
  end

  # POST /wap_services
  # POST /wap_services.json
  def create
    @wap_service = WapService.new(wap_service_params)

    respond_to do |format|
      if @wap_service.save
        format.html { redirect_to admin_path, notice: 'Successfully created.' }
        format.json { render action: 'show', status: :created, location: @wap_service }
      else
        format.html { redirect_to admin_path, notice: 'Failed.' }
        format.json { render json: @wap_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wap_services/1
  # PATCH/PUT /wap_services/1.json
  def update
    respond_to do |format|
      if @wap_service.update(wap_service_params)
        format.html { redirect_to @wap_service, notice: 'Wap service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wap_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wap_services/1
  # DELETE /wap_services/1.json
  def destroy
    @wap_service.destroy
    respond_to do |format|
      format.html { redirect_to wap_services_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wap_service
      @wap_service = WapService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wap_service_params
      params.require(:wap_service).permit(:body)
    end
end
