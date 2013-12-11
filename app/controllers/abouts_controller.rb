class AboutsController < ApplicationController
  before_action :set_about, only: [:show, :edit, :update, :destroy]

  # GET /about
  # GET /about.json
  def index
    @about = About.all
  end

  # GET /about/1
  # GET /about/1.json
  def show
  end

  # GET /about/new
  def new
    @about = About.new
  end

  # GET /about/1/edit
  def edit
  end

  # POST /about
  # POST /about.json
  def create
    @about = About.new(about_params)

    respond_to do |format|
      if @about.save
        format.html { redirect_to admin_about_path, notice: 'successfully created.' }
        format.json { render action: 'show', status: :created, location: @about }
      else
        format.html { redirect_to admin_about_path, notice: 'Failed.' }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /about/1
  # PATCH/PUT /about/1.json
  def update
    respond_to do |format|
      if @about.update(about_params)
        format.html { redirect_to @about, notice: 'Ivr based was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about/1
  # DELETE /about/1.json
  def destroy
    @about.destroy
    respond_to do |format|
      format.html { redirect_to about_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about
      @about = About.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_params
      params.require(:about).permit(:image)
    end
end
