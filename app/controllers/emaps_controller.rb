class EmapsController < ApplicationController
  before_action :set_emap, only: [:show, :edit, :update, :destroy]
  
  # GET /emaps
  # GET /emaps.json
  def index
    @emaps = Emap.all
  end

  # GET /emaps/1
  # GET /emaps/1.json
  def show
    @emap = Emap.find(params[:id])
  end

  # GET /emaps/new
  def new
    @emap = Emap.new
  end

  # GET /emaps/1/edit
  def edit
  end

  # POST /emaps
  # POST /emaps.json
  def create
    @emap = Emap.new(emap_params)

    respond_to do |format|
      if @emap.save
        format.html { redirect_to @emap, notice: 'Emap was successfully created.' }
        format.json { render :show, status: :created, location: @emap }
      else
        format.html { render :new }
        format.json { render json: @emap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emaps/1
  # PATCH/PUT /emaps/1.json
  def update
    respond_to do |format|
      if @emap.update(emap_params)
        format.html { redirect_to @emap, notice: 'Emap was successfully updated.' }
        format.json { render :show, status: :ok, location: @emap }
      else
        format.html { render :edit }
        format.json { render json: @emap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emaps/1
  # DELETE /emaps/1.json
  def destroy
    @emap.destroy
    respond_to do |format|
      format.html { redirect_to emaps_url, notice: 'Emap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emap
      @emap = Emap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emap_params
      params.require(:emap).permit(:name, :description, :country, :type_sys, :latitude, :longitude, :capacity)
    end
end
