class ClothTypesController < ApplicationController
  before_action :set_cloth_type, only: %i[ show edit update destroy ]

  # GET /cloth_types or /cloth_types.json
  def index
    @cloth_types = ClothType.all
  end

  # GET /cloth_types/1 or /cloth_types/1.json
  def show
  end

  # GET /cloth_types/new
  def new
    @cloth_type = ClothType.new
  end

  # GET /cloth_types/1/edit
  def edit
  end

  # POST /cloth_types or /cloth_types.json
  def create
    @cloth_type = ClothType.new(cloth_type_params)

    respond_to do |format|
      if @cloth_type.save
        format.html { redirect_to @cloth_type, notice: "Cloth type was successfully created." }
        format.json { render :show, status: :created, location: @cloth_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cloth_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cloth_types/1 or /cloth_types/1.json
  def update
    respond_to do |format|
      if @cloth_type.update(cloth_type_params)
        format.html { redirect_to @cloth_type, notice: "Cloth type was successfully updated." }
        format.json { render :show, status: :ok, location: @cloth_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cloth_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cloth_types/1 or /cloth_types/1.json
  def destroy
    @cloth_type.destroy
    respond_to do |format|
      format.html { redirect_to cloth_types_url, notice: "Cloth type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloth_type
      @cloth_type = ClothType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cloth_type_params
      params.require(:cloth_type).permit(:name)
    end
end
