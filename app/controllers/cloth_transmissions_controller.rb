class ClothTransmissionsController < ApplicationController
  before_action :set_cloth_transmission, only: %i[ show edit update destroy ]

  # GET /cloth_transmissions or /cloth_transmissions.json
  def index
    @cloth_transmissions = ClothTransmission.all
  end

  # GET /cloth_transmissions/1 or /cloth_transmissions/1.json
  def show
  end

  # GET /cloth_transmissions/new
  def new
    @cloth_transmission = ClothTransmission.new
  end

  # GET /cloth_transmissions/1/edit
  def edit
  end

  # POST /cloth_transmissions or /cloth_transmissions.json
  def create
    @cloth_transmission = ClothTransmission.new(cloth_transmission_params)

    respond_to do |format|
      if @cloth_transmission.save
        format.html { redirect_to @cloth_transmission, notice: "Cloth transmission was successfully created." }
        format.json { render :show, status: :created, location: @cloth_transmission }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cloth_transmission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cloth_transmissions/1 or /cloth_transmissions/1.json
  def update
    respond_to do |format|
      if @cloth_transmission.update(cloth_transmission_params)
        format.html { redirect_to @cloth_transmission, notice: "Cloth transmission was successfully updated." }
        format.json { render :show, status: :ok, location: @cloth_transmission }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cloth_transmission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cloth_transmissions/1 or /cloth_transmissions/1.json
  def destroy
    @cloth_transmission.destroy
    respond_to do |format|
      format.html { redirect_to cloth_transmissions_url, notice: "Cloth transmission was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloth_transmission
      @cloth_transmission = ClothTransmission.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cloth_transmission_params
      params.require(:cloth_transmission).permit(:cloth_id, :transmission_id)
    end
end
