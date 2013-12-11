class GetConnectedAndLetKnowsController < ApplicationController
  before_action :set_get_connected_and_let_know, only: [:show, :edit, :update, :destroy]

  # GET /get_connected_and_let_knows
  # GET /get_connected_and_let_knows.json
  def index
    @get_connected_and_let_knows = GetConnectedAndLetKnow.all
  end

  # GET /get_connected_and_let_knows/1
  # GET /get_connected_and_let_knows/1.json
  def show
  end

  # GET /get_connected_and_let_knows/new
  def new
    @get_connected_and_let_know = GetConnectedAndLetKnow.new
  end

  # GET /get_connected_and_let_knows/1/edit
  def edit
  end

  # POST /get_connected_and_let_knows
  # POST /get_connected_and_let_knows.json
  def create
    @get_connected_and_let_know = GetConnectedAndLetKnow.new(get_connected_and_let_know_params)

    respond_to do |format|
      if @get_connected_and_let_know.save
        format.html { redirect_to @get_connected_and_let_know, notice: 'Get connected and let know was successfully created.' }
        format.json { render action: 'show', status: :created, location: @get_connected_and_let_know }
      else
        format.html { render action: 'new' }
        format.json { render json: @get_connected_and_let_know.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /get_connected_and_let_knows/1
  # PATCH/PUT /get_connected_and_let_knows/1.json
  def update
    respond_to do |format|
      if @get_connected_and_let_know.update(get_connected_and_let_know_params)
        format.html { redirect_to @get_connected_and_let_know, notice: 'Get connected and let know was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @get_connected_and_let_know.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /get_connected_and_let_knows/1
  # DELETE /get_connected_and_let_knows/1.json
  def destroy
    @get_connected_and_let_know.destroy
    respond_to do |format|
      format.html { redirect_to get_connected_and_let_knows_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_get_connected_and_let_know
      @get_connected_and_let_know = GetConnectedAndLetKnow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def get_connected_and_let_know_params
      params.require(:get_connected_and_let_know).permit(:title, :body)
    end
end
