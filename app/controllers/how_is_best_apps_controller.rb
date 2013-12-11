class HowIsBestAppsController < ApplicationController
  before_action :set_how_is_best_app, only: [:show, :edit, :update, :destroy]

  # GET /how_is_best_apps
  # GET /how_is_best_apps.json
  def index
    @how_is_best_apps = HowIsBestApp.all
  end

  # GET /how_is_best_apps/1
  # GET /how_is_best_apps/1.json
  def show
  end

  # GET /how_is_best_apps/new
  def new
    @how_is_best_app = HowIsBestApp.new
  end

  # GET /how_is_best_apps/1/edit
  def edit
  end

  # POST /how_is_best_apps
  # POST /how_is_best_apps.json
  def create
    @how_is_best_app = HowIsBestApp.new(how_is_best_app_params)

    respond_to do |format|
      if @how_is_best_app.save
        format.html { redirect_to @how_is_best_app, notice: 'How is best app was successfully created.' }
        format.json { render action: 'show', status: :created, location: @how_is_best_app }
      else
        format.html { render action: 'new' }
        format.json { render json: @how_is_best_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /how_is_best_apps/1
  # PATCH/PUT /how_is_best_apps/1.json
  def update
    respond_to do |format|
      if @how_is_best_app.update(how_is_best_app_params)
        format.html { redirect_to @how_is_best_app, notice: 'How is best app was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @how_is_best_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /how_is_best_apps/1
  # DELETE /how_is_best_apps/1.json
  def destroy
    @how_is_best_app.destroy
    respond_to do |format|
      format.html { redirect_to how_is_best_apps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_how_is_best_app
      @how_is_best_app = HowIsBestApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def how_is_best_app_params
      params.require(:how_is_best_app).permit(:title, :body)
    end
end
